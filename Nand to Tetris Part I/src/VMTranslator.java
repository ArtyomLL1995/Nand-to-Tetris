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

    public static String currentFileName = "test";

    public static final List<String> commonPushCommands = Arrays.asList("@SP","A=M","M=D","@SP","M=M+1");

    public static final List<String> pushConstantCommands = Arrays.asList("D=A");
    public static final List<String> pushLocalCommands = Arrays.asList("D=A","@LCL","A=D+M","D=M");
    public static final List<String> pushArgumentCommands = Arrays.asList("D=A","@ARG","A=D+M","D=M");
    public static final List<String> pushThisCommands = Arrays.asList("D=A","@THIS","A=D+M","D=M");
    public static final List<String> pushThatCommands = Arrays.asList("D=A","@THAT","A=D+M","D=M");
    public static final List<String> pushTempCommands = Arrays.asList("D=A","","D=M");
    public static final List<String> pushStaticCommands = Arrays.asList("","D=M");

    public static final List<String> pushPointerCommands = Arrays.asList("D=A","@R3","A=D+A","D=M");

    public static final Map<String, List<String>> pushCommandsMap = Map.of(
        "constant", pushConstantCommands,
        "local", pushLocalCommands,
        "argument", pushArgumentCommands,
        "this", pushThisCommands,
        "that", pushThatCommands,
        "temp", pushTempCommands,
        "pointer", pushPointerCommands,
        "static", pushStaticCommands
    );

    public static final List<String> commonStartPopCommands = Arrays.asList("@SP","M=M-1");
    public static final List<String> commonEndPopCommands = Arrays.asList("@SP","A=M","D=M","@R13","A=M","M=D");

    public static final List<String> popLocalCommands = Arrays.asList("D=A","@LCL","A=D+M","D=A","@R13","M=D");
    public static final List<String> popArgumentCommands = Arrays.asList("D=A","@ARG","A=D+M","D=A","@R13","M=D");
    public static final List<String> popThisCommands = Arrays.asList("D=A","@THIS","A=D+M","D=A","@R13","M=D");
    public static final List<String> popThatCommands = Arrays.asList("D=A","@THAT","A=D+M","D=A","@R13","M=D");

    public static final Map<String, List<String>> popCommandsMap = Map.of(
        "local", popLocalCommands,
        "argument", popArgumentCommands,
        "this", popThisCommands,
        "that", popThatCommands
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
        String memorySegment = parts[1];
        String index = parts[2];

        if (line.indexOf("push") == 0) {

            if (memorySegment.equals("static")) {
                pushStaticCommands.set(0, "@" + currentFileName + "." + index);
            } else {
                if (memorySegment.equals("temp")) {
                    pushTempCommands.set(1, "@R" + (Integer.parseInt(index) + 5));
                }
                result += "@" + index + "\n";
            }
            for (String pushCommand : pushCommandsMap.get(memorySegment)) {
                result += pushCommand + "\n";
            }
            for (String commonCommand : commonPushCommands) {
                result += commonCommand + "\n";
            }

        } else if (line.indexOf("pop") == 0) {

            for (String commonCommand : commonStartPopCommands) {
                result += commonCommand + "\n";
            }
            result += "@" + index + "\n";
            for(String popCommand : popCommandsMap.get(memorySegment)) {
                result += popCommand + "\n";
            }
            for (String commonCommand : commonEndPopCommands) {
                result += commonCommand + "\n";
            }

        }

        return result;
    }

    public static void main(String[] args) throws Exception {
        // Source .asm file path
        String sourceFilePath = "BasicTest.vm";
        // Destination .hack file path
        String destinationFilePath = "BacicTest.asm";
        secondPass(sourceFilePath, destinationFilePath);
    }

    // pop local 5

    // @SP
    // M=M-1
    
    // @5
    // D=A
    // @LCL
    // A=D+M
    // D=A
    // @R13
    // M=D

    // @SP
    // A=M
    // D=M
    // @R13
    // A=M
    // M=D
    
}