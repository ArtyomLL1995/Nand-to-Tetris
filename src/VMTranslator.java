import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class VMTranslator {

    public static Integer lineNumber = 0;

    public static String currentFileName = "test";

    public static final List<String> commonPushCommands = Arrays.asList("@SP","A=M","M=D","@SP","M=M+1");

    public static final List<String> pushConstantCommands = Arrays.asList("D=A");
    public static final List<String> pushLocalCommands = Arrays.asList("D=A","@LCL","A=D+M","D=M");
    public static final List<String> pushArgumentCommands = Arrays.asList("D=A","@ARG","A=D+M","D=M");
    public static final List<String> pushThisCommands = Arrays.asList("D=A","@THIS","A=D+M","D=M");
    public static final List<String> pushThatCommands = Arrays.asList("D=A","@THAT","A=D+M","D=M");
    public static final List<String> pushTempCommands = Arrays.asList("","D=M");
    public static final List<String> pushStaticCommands = Arrays.asList("","D=M");
    public static final List<String> pushPointerCommands = Arrays.asList("","D=M");

    public static final Map<String, List<String>> pushCommandsMap = Map.of(
        "constant", pushConstantCommands,
        "pointer", pushPointerCommands,
        "local", pushLocalCommands,
        "argument", pushArgumentCommands,
        "this", pushThisCommands,
        "that", pushThatCommands,
        "temp", pushTempCommands,
        "static", pushStaticCommands
    );

    public static final List<String> commonStartPopCommands = Arrays.asList("@SP","M=M-1");
    public static final List<String> commonEndPopCommands = Arrays.asList("@SP","A=M","D=M","@R13","A=M","M=D");

    public static final List<String> popLocalCommands = Arrays.asList("D=A","@LCL","A=D+M","D=A","@R13","M=D");
    public static final List<String> popArgumentCommands = Arrays.asList("D=A","@ARG","A=D+M","D=A","@R13","M=D");
    public static final List<String> popThisCommands = Arrays.asList("D=A","@THIS","A=D+M","D=A","@R13","M=D");
    public static final List<String> popThatCommands = Arrays.asList("D=A","@THAT","A=D+M","D=A","@R13","M=D");
    public static final List<String> popTempCommands = Arrays.asList("","D=A","@R13","M=D");
    public static final List<String> popStaticCommands = Arrays.asList("","D=A","@R13","M=D");
    public static final List<String> popPointerCommands = Arrays.asList("","D=A","@R13","M=D");

    public static final Map<String, List<String>> popCommandsMap = Map.of(
        "pointer", popPointerCommands,
        "local", popLocalCommands,
        "argument", popArgumentCommands,
        "this", popThisCommands,
        "that", popThatCommands,
        "temp", popTempCommands,
        "static", popStaticCommands
    );

    public static void secondPass(String sourceFile, String destinationFile) {
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
                String processedLine = processLine(line);
                writer.write(processedLine);
                writer.newLine();
            }
        } catch (IOException e) {
            System.err.println("An error occurred: " + e.getMessage());
        }
    }

    public static String processLine(String line) {

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
            } else {
                if (memorySegment.equals("temp")) {
                    popTempCommands.set(0, "@R" + (Integer.parseInt(index) + 5));
                } else if (memorySegment.equals("pointer")) {
                    Integer pointerIndex = Integer.parseInt(index) == 0 ? 3 : 4;
                    popPointerCommands.set(0,"@R" + pointerIndex);
                } else {
                    result += "@" + index + "\n";
                }
            }
            for (String commonCommand : commonStartPopCommands) {
                result += commonCommand + "\n";
            }
            for(String popCommand : popCommandsMap.get(memorySegment)) {
                result += popCommand + "\n";
            }
            for (String commonCommand : commonEndPopCommands) {
                result += commonCommand + "\n";
            }

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
                eqCommands.set(6, "@NOTEQUAL" + lineNumber);
                eqCommands.set(13, "(NOTEQUAL" + lineNumber + ')');
                eqCommands.set(11, "@END" + lineNumber);
                eqCommands.set(17, "(END" + lineNumber + ')');
                result += eqCommand + "\n";
            }
        }

        return result;
    }

    public static void main(String[] args) throws Exception {
        secondPass(args[0], args[1]);
    }

    public static final List<String> addCommands = Arrays.asList("@SP","M=M-1","A=M","D=M","A=A-1","M=D+M");
    public static final List<String> subCommands = Arrays.asList("@SP","M=M-1","A=M","D=M","A=A-1","M=M-D");
    public static final List<String> negCommands = Arrays.asList("@SP","M=M-1","A=M","M=-M","@SP","M=M+1");
    public static final List<String> eqCommands = Arrays.asList(
    "@SP",
        "AM=M-1",
        "D=M",
        "@SP",
        "AM=M-1",
        "D=M-D",
        "", // @NOTEQUAL 6
        "D;JNE",
        "@SP",
        "A=M",
        "M=-1",
        "", // @END 11
        "0;JMP",
        "", // (NOTEQUAL) 13
        "@SP",
        "A=M",
        "M=0",
        "", // (END)17
        "@SP",
        "AM=M+1"
    );

}