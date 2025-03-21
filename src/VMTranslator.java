import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Map;
import java.util.Arrays;
import java.util.List;

public class VMTranslator {

    private static Integer lineNumber = 0;

    private static String currentFileName = "test";

    private static final List<String> commonPushCommands = Arrays.asList("@SP","A=M","M=D","@SP","M=M+1");

    private static final List<String> pushConstantCommands = Arrays.asList("D=A");
    private static final List<String> pushLocalCommands = Arrays.asList("D=A","@LCL","A=D+M","D=M");
    private static final List<String> pushArgumentCommands = Arrays.asList("D=A","@ARG","A=D+M","D=M");
    private static final List<String> pushThisCommands = Arrays.asList("D=A","@THIS","A=D+M","D=M");
    private static final List<String> pushThatCommands = Arrays.asList("D=A","@THAT","A=D+M","D=M");
    private static final List<String> pushTempCommands = Arrays.asList("","D=M");
    private static final List<String> pushStaticCommands = Arrays.asList("","D=M");
    private static final List<String> pushPointerCommands = Arrays.asList("","D=M");

    private static final Map<String, List<String>> pushCommandsMap = Map.of(
        "constant", pushConstantCommands,
        "pointer", pushPointerCommands,
        "local", pushLocalCommands,
        "argument", pushArgumentCommands,
        "this", pushThisCommands,
        "that", pushThatCommands,
        "temp", pushTempCommands,
        "static", pushStaticCommands
    );

    private static final List<String> popLocalCommands = Arrays.asList("D=A","@LCL","D=D+M","@R13","M=D"); // +
    private static final List<String> popArgumentCommands = Arrays.asList("D=A","@ARG","D=D+M","@R13","M=D"); // +
    private static final List<String> popThisCommands = Arrays.asList("D=A","@THIS","D=D+M","@R13","M=D"); // +
    private static final List<String> popThatCommands = Arrays.asList("D=A","@THAT","D=D+M","@R13","M=D"); // +
    private static final List<String> popTempCommands = Arrays.asList("@SP","AM=M-1","D=M","","M=D"); // +

    private static final List<String> popStaticCommands = Arrays.asList("","D=A","@R13","M=D");
    private static final List<String> popPointerCommands = Arrays.asList("","D=A","@R13","M=D");

    private static final List<String> commonPopEndCommands = Arrays.asList("@SP","AM=M-1","D=M","@R13","A=M","M=D"); // +

    private static final Map<String, List<String>> popCommandsMap = Map.of(
        "pointer", popPointerCommands,
        "local", popLocalCommands,
        "argument", popArgumentCommands,
        "this", popThisCommands,
        "that", popThatCommands,
        "temp", popTempCommands,
        "static", popStaticCommands
    );

    private static void secondPass(String sourceFile) {
        String destinationFile = sourceFile.replace(".vm", ".asm");
        try (
            // FileReader and BufferedReader to read the .asm file
            BufferedReader reader = new BufferedReader(new FileReader(sourceFile));
            //FileWriter and BufferedWriter to write to the .hack file
            BufferedWriter writer = new BufferedWriter(new FileWriter(destinationFile))
        ) {
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
                lineNumber++;
                String processedLine = processLine(line, lineNumber);
                writer.write(processedLine);
                writer.newLine();
            }
        } catch (IOException e) {
            System.err.println("An error occurred: " + e.getMessage());
        }
    }

    private static String processLine(String line, Integer lineNumber) {

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
            for (String commonCommand : commonPushCommands) {
                result += commonCommand + "\n";
            }

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
            for (String addCommand : addCommands) {
                result += addCommand + "\n";
            }
        } else if (line.indexOf("sub") == 0) {
            for (String subCommand : subCommands) {
                result += subCommand + "\n";
            }
        } else if (line.indexOf("neg") == 0) {
            for (String negCommand : negCommands) {
                result += negCommand + "\n";
            }
        } else if (line.indexOf("eq") == 0) {
            for (String eqCommand : eqCommands) {
                eqCommands.set(6, "@NOT_EQUAL_ZERO" + lineNumber);
                eqCommands.set(13, "(NOT_EQUAL_ZERO" + lineNumber + ')');
                eqCommands.set(11, "@END" + lineNumber);
                eqCommands.set(17, "(END" + lineNumber + ')');
                result += eqCommand + "\n";
            }
        } else if (line.indexOf("gt") == 0) {
            for (String gtCommand : gtCommands) {
                gtCommands.set(6, "@LESS_OR_EQUAL_ZERO" + lineNumber);
                gtCommands.set(13, "(LESS_OR_EQUAL_ZERO" + lineNumber + ')');
                gtCommands.set(11, "@END" + lineNumber);
                gtCommands.set(17, "(END" + lineNumber + ')');
                result += gtCommand + "\n";
            }
        } else if (line.indexOf("lt") == 0) {
            for (String ltCommand : ltCommands) {
                ltCommands.set(6, "@GREAT_OR_EQUAL_ZERO" + lineNumber);
                ltCommands.set(13, "(GREAT_OR_EQUAL_ZERO" + lineNumber + ')');
                ltCommands.set(11, "@END" + lineNumber);
                ltCommands.set(17, "(END" + lineNumber + ')');
                result += ltCommand + "\n";
            }
        } else if (line.indexOf("and") == 0) {
            for (String andCommand : andCommands) {
                result += andCommand + "\n";
            }
        } else if (line.indexOf("or") == 0) {
            for (String orCommand : orCommands) {
                result += orCommand + "\n";
            }
        } else if (line.indexOf("not") == 0) {
            for (String notCommand : notCommands) {
                result += notCommand + "\n";
            }
        } else if (line.indexOf("label") == 0) {
            result += "(" + parts[1] + ")" + "\n";
        } else if (line.indexOf("if-goto") == 0) {
            ifGotoCommands.set(3, "@"+parts[1]);
            for (String ifGotoCommand : ifGotoCommands) {
                result += ifGotoCommand + "\n";
            }
        } else if (line.indexOf("goto") == 0) {
            gotoCommands.set(0, "@"+parts[1]);
            for (String gotoCommand : gotoCommands) {
                result += gotoCommand + "\n";
            }
        } else if (line.indexOf("function") == 0) {
            result += "(" + parts[1] + ")" + "\n";
            for (Integer i = 0; i < Integer.parseInt(parts[2]); i++) {
                result += "@SP\nA=M\nM=0\n@SP\nM=M+1\n";
            }
        } else if (line.indexOf("call") == 0) {
            callNewFunctionCommands.set(callNewFunctionCommands.size()-1,"(ReturAddress_"+parts[1]+lineNumber + ")");
            callNewFunctionCommands.set(0,"@ReturAddress_"+parts[1]+lineNumber);
            callNewFunctionCommands.set(callNewFunctionCommands.size()-3,"@"+parts[1]);
            callNewFunctionCommands.set(callNewFunctionCommands.size()-15,"@"+parts[2]);
            for (String callFuncCommand : callNewFunctionCommands) {
                result += callFuncCommand + "\n";
            }
        } else if (line.indexOf("return") == 0) {
            for (String returnFuncCommand : returnNewFunctionCommands) {
                result += returnFuncCommand + "\n";
            }
        }
        return result;
    }

    private static String generatePopASMCommand(String memorySegment) {
        String result = "";
        for(String popCommand : popCommandsMap.get(memorySegment)) {
            result += popCommand + "\n";
        }
        if (!memorySegment.equals("temp")) {
            for (String commonPopCommand : commonPopEndCommands) {
                result += commonPopCommand + "\n";
            }
        }
        return result;
    }

    public static void main(String[] args) throws Exception {
        secondPass(args[0]);
    }

    private static final List<String> addCommands = Arrays.asList("@SP","AM=M-1","D=M","A=A-1","M=D+M");
    private static final List<String> andCommands = Arrays.asList("@SP","AM=M-1","D=M","A=A-1","M=D&M");
    private static final List<String> orCommands = Arrays.asList("@SP","AM=M-1","D=M","A=A-1","M=D|M");
    private static final List<String> notCommands = Arrays.asList("@SP","A=M-1","M=!M");
    private static final List<String> subCommands = Arrays.asList("@SP","AM=M-1","D=M","A=A-1","M=M-D");
    private static final List<String> negCommands = Arrays.asList("@SP","AM=M-1","M=-M","@SP","M=M+1");
    private static final List<String> eqCommands = Arrays.asList(
    "@SP",
        "AM=M-1",
        "D=M",
        "@SP",
        "AM=M-1",
        "D=M-D",
        "", // @NOT_EQUAL_ZERO 6
        "D;JNE",
        "@SP",
        "A=M",
        "M=-1",
        "", // @END 11
        "0;JMP",
        "", // (NOT_EQUAL_ZERO) 13
        "@SP",
        "A=M",
        "M=0",
        "", // (END)17
        "@SP",
        "AM=M+1"
    );

    private static final List<String> gtCommands = Arrays.asList(
    "@SP",
        "AM=M-1",
        "D=M",
        "@SP",
        "AM=M-1",
        "D=M-D",
        "", // @LESS_OR_EQUAL_ZERO 6
        "D;JLE",
        "@SP",
        "A=M",
        "M=-1",
        "", // @END 11
        "0;JMP",
        "", // (LESS_OR_EQUAL_ZERO) 13
        "@SP",
        "A=M",
        "M=0",
        "", // (END)17
        "@SP",
        "AM=M+1"
    );

    private static final List<String> ltCommands = Arrays.asList(
    "@SP",
        "AM=M-1",
        "D=M",
        "@SP",
        "AM=M-1",
        "D=M-D",
        "", // @GREAT_OR_EQUAL_ZERO 6
        "D;JGE",
        "@SP",
        "A=M",
        "M=-1",
        "", // @END 11
        "0;JMP",
        "", // (GREAT_OR_EQUAL_ZERO) 13
        "@SP",
        "A=M",
        "M=0",
        "", // (END)17
        "@SP",
        "AM=M+1"
    );

    private static final List<String> ifGotoCommands = Arrays.asList("@SP","AM=M-1","D=M","","D;JNE");
    private static final List<String> gotoCommands = Arrays.asList("","0;JMP");

    private static final List<String> callNewFunctionCommands = Arrays.asList(
        // Saving current return address into the stack
        "", // this label name assigned dynamically based on caller's name
        "D=A",
        "@SP",
        "A=M",
        "M=D",
        "@SP",
        "M=M+1",
        // Saving LCL to the stack
        "@LCL",
        "D=M",
        "@SP",
        "A=M",
        "M=D",
        "@SP",
        "M=M+1",
        // Saving ARG to the stack
        "@ARG",
        "D=M",
        "@SP",
        "A=M",
        "M=D",
        "@SP",
        "M=M+1",
        // Saving THIS to the stack
        "@THIS",
        "D=M",
        "@SP",
        "A=M",
        "M=D",
        "@SP",
        "M=M+1",
        // Saving THAT to the stack
        "@THAT",
        "D=M",
        "@SP",
        "A=M",
        "M=D",
        "@SP",
        "M=M+1",
        // repositioning ARG (for new function context)
        "", // this changed dynamically depending in the number of args
        "D=A",
        "@5",
        "D=D+A",
        "@SP",
        "D=M-D",
        "@ARG",
        "M=D",
        // repositioning LCL (for new function context)
        "@SP",
        "D=M",
        "@LCL",
        "M=D",
        // jumping to called function
        "", // function name assigned dynamically based on callee's name
        "0;JMP",
        "" //this label name assigned dynamically based on caller's name 
    );

    private static final List<String> returnNewFunctionCommands = Arrays.asList(
        // Get endFrame (current LCL) and Return Address
    "@LCL",
        "D=M",
        "@R13",
        "M=D",
        "@5",
        "A=D-A",
        "D=M",
        "@R14",
        "M=D",
        // Set return result into ARG and set SP next to new return result
        "@SP",
        "AM=M-1",
        "D=M",
        "@ARG",
        "A=M",
        "M=D",
        "D=A+1",
        "@SP",
        "M=D",
        // Restoring LCL
        "@4",
        "D=A",
        "@R13",
        "A=M-D",
        "D=M",
        "@LCL",
        "M=D",
        // Restoring ARG
        "@3",
        "D=A",
        "@R13",
        "A=M-D",
        "D=M",
        "@ARG",
        "M=D",
        // Restoring THIS
        "@2",
        "D=A",
        "@R13",
        "A=M-D",
        "D=M",
        "@THIS",
        "M=D",
        // Restoring THAT
        "@1",
        "D=A",
        "@R13",
        "A=M-D",
        "D=M",
        "@THAT",
        "M=D",
        // goto returnAddress
        "@R14",
        "A=M",
        "0;JMP"
    );
}