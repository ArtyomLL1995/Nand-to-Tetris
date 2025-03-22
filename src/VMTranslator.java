import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Map;
import java.util.Arrays;
import java.util.List;
import java.io.File;

public class VMTranslator {

    private static Integer lineNumber = 0;

    private static String currentFileName;

    private static final List<String> pushTempCommands = Arrays.asList("","D=M");
    private static final List<String> pushStaticCommands = Arrays.asList("","D=M");
    private static final List<String> pushPointerCommands = Arrays.asList("","D=M");

    private static final Map<String, List<String>> pushCommandsMap = Map.of(
        "constant", Arrays.asList("D=A"),
        "pointer", pushPointerCommands,
        "local", Arrays.asList("D=A","@LCL","A=D+M","D=M"),
        "argument", Arrays.asList("D=A","@ARG","A=D+M","D=M"),
        "this", Arrays.asList("D=A","@THIS","A=D+M","D=M"),
        "that", Arrays.asList("D=A","@THAT","A=D+M","D=M"),
        "temp", pushTempCommands,
        "static", pushStaticCommands
    );

    private static final List<String> popPointerCommands = Arrays.asList("","D=A","@R13","M=D");
    private static final List<String> popLocalCommands = Arrays.asList("D=A","@LCL","D=D+M","@R13","M=D"); // +
    private static final List<String> popTempCommands = Arrays.asList("@SP","AM=M-1","D=M","","M=D"); // +
    private static final List<String> popStaticCommands = Arrays.asList("","D=A","@R13","M=D");

    private static final Map<String, List<String>> popCommandsMap = Map.of(
        "pointer", popPointerCommands,
        "local", popLocalCommands,
        "argument", Arrays.asList("D=A","@ARG","D=D+M","@R13","M=D"),
        "this", Arrays.asList("D=A","@THIS","D=D+M","@R13","M=D"),
        "that", Arrays.asList("D=A","@THAT","D=D+M","@R13","M=D"),
        "temp", popTempCommands,
        "static", popStaticCommands
    );

    private static void secondPass(File[] sourceFiles, String destinationFile, Boolean translatingSingleFile) {

        StringBuilder assemblerCodeBuilder = new StringBuilder();

        if (!translatingSingleFile) {
            assemblerCodeBuilder.append("// Setting SP to 256 \n");
            assemblerCodeBuilder.append("\n");
            assemblerCodeBuilder.append("@256\nD=A\n@SP\nM=D\n");
            assemblerCodeBuilder.append("\n");
            assemblerCodeBuilder.append("// Automatic call of Sys.init function \n");
            assemblerCodeBuilder.append("\n");
            assemblerCodeBuilder.append(generateCallNewFunctionCommand("Sys.init","0"));
            assemblerCodeBuilder.append("\n");
        }

        for (File sourceFile : sourceFiles) {
            currentFileName = sourceFile.getName().replace(".vm", ""); // Update current file name
            try (BufferedReader reader = new BufferedReader(new FileReader(sourceFile))) {

                assemblerCodeBuilder.append("// Start File " + sourceFile.getName() + "\n");
                assemblerCodeBuilder.append("\n");

                String line;
                while ((line = reader.readLine()) != null) {
                    line = line.trim(); // Remove leading and trailing spaces
                    // Ignore empty lines or comment-only lines
                    if (line.isEmpty() || line.startsWith("//")) {
                        continue;
                    }
                    // If a comment is inline (e.g., "D=A  // This is a comment"), remove it
                    int commentIndex = line.indexOf("//");
                    if (commentIndex != -1) {
                        line = line.substring(0, commentIndex).trim(); // Keep only the instruction
                    }
                    String processedLine = processLine(line);
                    assemblerCodeBuilder.append(processedLine).append("\n");
                    lineNumber++;
                }
                assemblerCodeBuilder.append("// End File " + sourceFile.getName() + "\n");
                assemblerCodeBuilder.append("\n");
            } catch (IOException e) {
                System.err.println("An error occurred while processing file: " + sourceFile.getName());
                e.printStackTrace();
            }
        }

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(destinationFile))) {
            writer.write(assemblerCodeBuilder.toString());
        } catch (IOException e) {
            System.err.println("Error Writing File. " + e.getMessage());
            e.printStackTrace();
        }
        
    }

    private static String processLine(String line) {

        String result = "// " + line + "\n";

        String[] parts = line.split(" ");
        
        if (line.indexOf("push") == 0) {

            String memorySegment = parts[1];
            String index = parts[2];

            if (memorySegment.equals("static")) {
                pushStaticCommands.set(0, "@" + currentFileName + "." + index);
            } else {
                if (memorySegment.equals("temp")) {
                    pushTempCommands.set(0, "@R" + (Integer.parseInt(index) + 5));
                } else if (memorySegment.equals("pointer")) {
                    Integer pointerIndex = Integer.parseInt(index) == 0 ? 3 : 4;
                    pushPointerCommands.set(0,"@R" + pointerIndex);
                } else {
                    result += "@" + index + "\n";
                }
            }
            for (String pushCommand : pushCommandsMap.get(memorySegment)) {
                result += pushCommand + "\n";
            }

            result += "@SP\nA=M\nM=D\n@SP\nM=M+1\n";

        } else if (line.indexOf("pop") == 0) {

            String memorySegment = parts[1];
            String index = parts[2];

            if (memorySegment.equals("static")) {
                popStaticCommands.set(0, "@" + currentFileName + "." + index);
            } else if (memorySegment.equals("temp")) {
                popTempCommands.set(3,"@R" + (Integer.parseInt(index) + 5));
            } else if (memorySegment.equals("pointer")) {
                Integer pointerIndex = Integer.parseInt(index) == 0 ? 3 : 4;
                popPointerCommands.set(0,"@R" + pointerIndex);
            } else {
                result += "@" + index + "\n";
            }

            result += generatePopASMCommand(memorySegment);

        } else if (line.indexOf("add") == 0) {

            result += "@SP\nAM=M-1\nD=M\nA=A-1\nM=D+M\n";

        } else if (line.indexOf("sub") == 0) {

            result += "@SP\nAM=M-1\nD=M\nA=A-1\nM=M-D\n";

        } else if (line.indexOf("neg") == 0) {

            result += "@SP\nAM=M-1\nM=-M\n@SP\nM=M+1\n";

        } else if (line.indexOf("eq") == 0) {

            result += generateEqGtLtCommands("D;JNE");

        } else if (line.indexOf("gt") == 0) {

            result += generateEqGtLtCommands("D;JLE");

        } else if (line.indexOf("lt") == 0) {

            result += generateEqGtLtCommands("D;JGE");

        } else if (line.indexOf("and") == 0) {

            result += "@SP\nAM=M-1\nD=M\nA=A-1\nM=D&M\n";

        } else if (line.indexOf("or") == 0) {

            result += "@SP\nAM=M-1\nD=M\nA=A-1\nM=D|M\n";

        } else if (line.indexOf("not") == 0) {

            result += "@SP\nA=M-1\nM=!M\n";

        } else if (line.indexOf("label") == 0) {

            result += "(" + parts[1] + ")" + "\n";

        } else if (line.indexOf("if-goto") == 0) {

            result += "@SP\nAM=M-1\nD=M\n" + "@"+parts[1] + "\nD;JNE\n";

        } else if (line.indexOf("goto") == 0) {

            result += "@"+parts[1] + "\n0;JMP\n";

        } else if (line.indexOf("function") == 0) {

            result += "(" + parts[1] + ")" + "\n";

            for (Integer i = 0; i < Integer.parseInt(parts[2]); i++) {
                result += "@SP\nA=M\nM=0\n@SP\nM=M+1\n";
            }

        } else if (line.indexOf("call") == 0) {
            result += generateCallNewFunctionCommand(parts[1],parts[2]);
        } else if (line.indexOf("return") == 0) {
            for (String returnFuncCommand : returnNewFunctionCommands) {
                result += returnFuncCommand + "\n";
            }
        }
        return result;
    }

    private static String generateCallNewFunctionCommand(String calledFunctionName, String numberOfArguments) {
        String result = "";
        callNewFunctionCommands.set(callNewFunctionCommands.size()-1,"(ReturAddress_"+calledFunctionName+lineNumber + ")");
        callNewFunctionCommands.set(0,"@ReturAddress_"+calledFunctionName+lineNumber);
        callNewFunctionCommands.set(callNewFunctionCommands.size()-3,"@"+calledFunctionName);
        callNewFunctionCommands.set(callNewFunctionCommands.size()-6,"@"+numberOfArguments);
        for (String callFuncCommand : callNewFunctionCommands) {
            result += callFuncCommand + "\n";
        }
        return result;
    }

    private static String generateEqGtLtCommands(String jumpCommand) {
        String result = "";
        eq_gt_lt_Commands.set(1,"@JUMP_LABEL" + lineNumber);
        eq_gt_lt_Commands.set(2,jumpCommand);
        eq_gt_lt_Commands.set(4,"@END_LABEL" + lineNumber);
        eq_gt_lt_Commands.set(6,"(JUMP_LABEL" + lineNumber + ")");
        eq_gt_lt_Commands.set(8,"(END_LABEL" + lineNumber + ")");
        for (String eqCommand : eq_gt_lt_Commands) {
            result += eqCommand + "\n";
        }
        return result;
    }

    private static String generatePopASMCommand(String memorySegment) {
        String result = "";
        for(String popCommand : popCommandsMap.get(memorySegment)) {
            result += popCommand + "\n";
        }
        if (!memorySegment.equals("temp")) {
            result += "@SP\nAM=M-1\nD=M\n@R13\nA=M\nM=D\n";
        }
        return result;
    }

    private static final List<String> eq_gt_lt_Commands = Arrays.asList(
        "@SP\nAM=M-1\nD=M\n@SP\nAM=M-1\nD=M-D",
        "", // @JUMP_LABEL
        "", // Type of a jump JNE, JLE, JGE
        "@SP\nA=M\nM=-1",
        "", // @END_LABEL,
        "0;JMP",
        "", // (JUMP_LABEL)
        "@SP\nA=M\nM=0",
        "", // (END_LABEL)
        "@SP\nAM=M+1"
    );

    private static final List<String> callNewFunctionCommands = Arrays.asList(
        // Saving current return address into the stack
        "", // here we set return address label based on caller's name 
        "D=A\n@SP\nA=M\nM=D\n@SP\nM=M+1",
        // Saving LCL to the stack
        "@LCL\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1",
        // Saving ARG to the stack
        "@ARG\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1",
        // Saving THIS to the stack
        "@THIS\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1",
        // Saving THAT to the stack
        "@THAT\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1",
        "", // this changed dynamically depending in the number of args
        // repositioning ARG (for new function context)
        "D=A\n@5\nD=D+A\n@SP\nD=M-D\n@ARG\nM=D",
        // repositioning LCL (for new function context)
        "@SP\nD=M\n@LCL\nM=D",
        "", // function name assigned dynamically based on callee's name
        // jumping to called function
        "0;JMP",
        "" //here we place return address label based on caller's name 
    );

    private static final List<String> returnNewFunctionCommands = Arrays.asList(
        // Get endFrame (current LCL) and Return Address
        "@LCL\nD=M\n@R13\nM=D\n@5\nA=D-A\nD=M\n@R14\nM=D",
        // Set return result into ARG and set SP next to new return result
        "@SP\nAM=M-1\nD=M\n@ARG\nA=M\nM=D\nD=A+1\n@SP\nM=D",
        // Restoring LCL
        "@4\nD=A\n@R13\nA=M-D\nD=M\n@LCL\nM=D",
        // Restoring ARG
        "@3\nD=A\n@R13\nA=M-D\nD=M\n@ARG\nM=D",
        // Restoring THIS
        "@2\nD=A\n@R13\nA=M-D\nD=M\n@THIS\nM=D",
        // Restoring THAT
        "@1\nD=A\n@R13\nA=M-D\nD=M\n@THAT\nM=D",
        // goto returnAddress
        "@R14\nA=M\n0;JMP\n// End function\n"
    );

    public static void main(String[] args) throws Exception {
        if (args.length == 0) {
            System.err.println("Please provide a file or directory path as an argument.");
            return;
        }
        File inputPath = new File(args[0]);
        if (inputPath.isFile() && args[0].endsWith(".vm")) {
            String outputFileName = args[0].replace(".vm", ".asm");
            secondPass(new File[] { inputPath }, outputFileName, true);
        } else if (inputPath.isDirectory()) {
            File[] files = inputPath.listFiles((dir, name) -> name.endsWith(".vm"));
            if (files == null || files.length == 0) {
                System.err.println("No .vm files found in the directory.");
                return;
            }
            String folderName = inputPath.getName();
            String outputFileName = inputPath.getAbsolutePath() + File.separator + folderName + ".asm";
            secondPass(files, outputFileName, false);
        } else {
            System.err.println("Invalid input. Please provide a .vm file or a directory.");
        }
    }
}