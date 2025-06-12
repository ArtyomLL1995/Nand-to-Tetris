package Assembler;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class HackAssembler {

    private static Map<String, Integer> varTable = new HashMap<>();

    private static Map<String, Integer> symbolTable = new HashMap<>(Map.ofEntries(
        Map.entry("R0", 0),
        Map.entry("R1", 1),
        Map.entry("R2", 2),
        Map.entry("R3", 3),
        Map.entry("R4", 4),
        Map.entry("R5", 5),
        Map.entry("R6", 6),
        Map.entry("R7", 7),
        Map.entry("R8", 8),
        Map.entry("R9", 9),
        Map.entry("R10", 10),
        Map.entry("R11", 11),
        Map.entry("R12", 12),
        Map.entry("R13", 13),
        Map.entry("R14", 14),
        Map.entry("R15", 15),
        Map.entry("SCREEN", 16384),
        Map.entry("KBD", 24576),
        Map.entry("SP", 0),
        Map.entry("LCL", 1),
        Map.entry("ARG", 2),
        Map.entry("THIS", 3),
        Map.entry("THAT", 4)
    ));

    // Predefined values for 'dest'
    public static final Map<String, String> destMap = Map.of(
        "M", "001",
        "D", "010",
        "MD", "011",
        "A", "100",
        "AM", "101",
        "AD", "110",
        "AMD", "111"
    );

    // Predefined values for 'jump'
    public static final Map<String, String> jumpMap = Map.of(
        "JGT", "001",
        "JEQ", "010",
        "JGE", "011",
        "JLT", "100",
        "JNE", "101",
        "JLE", "110",
        "JMP", "111"
    );

    public static final Map<String, String> compMap = Map.ofEntries(
        Map.entry("0", "0101010"),
        Map.entry("1", "0111111"),
        Map.entry("-1", "0111010"),
        Map.entry("D", "0001100"),
        Map.entry("A", "0110000"),
        Map.entry("M", "1110000"),
        Map.entry("!D", "0001101"),
        Map.entry("!A", "0110001"),
        Map.entry("!M", "1110001"),
        Map.entry("-D", "0001111"),
        Map.entry("-A", "0110011"),
        Map.entry("-M", "1110011"),
        Map.entry("D+1", "0011111"),
        Map.entry("A+1", "0110111"),
        Map.entry("M+1", "1110111"),
        Map.entry("D-1", "0001110"),
        Map.entry("A-1", "0110010"),
        Map.entry("M-1", "1110010"),
        Map.entry("D+A", "0000010"),
        Map.entry("D+M", "1000010"),
        Map.entry("D-A", "0010011"),
        Map.entry("D-M", "1010011"),
        Map.entry("A-D", "0000111"),
        Map.entry("M-D", "1000111"),
        Map.entry("D&A", "0000000"),
        Map.entry("D&M", "1000000"),
        Map.entry("D|A", "0010101"),
        Map.entry("D|M", "1010101")
    );

     // Method to copy content from .asm file to .hack file
    public static void firstPass(String sourceFile) {
        try (BufferedReader reader = new BufferedReader(new FileReader(sourceFile))) {
            
            String line;
            int instructionAddress = 0; 
            while ((line = reader.readLine()) != null) {
                line = line.trim(); // Remove leading and trailing spaces
                // Ignore empty lines or comment-only lines
                if (line.isEmpty() || line.startsWith("//")) {
                    continue;
                }
                // Check for labels (e.g., (START))
                if (line.startsWith("(") && line.endsWith(")")) {
                    String label = line.substring(1, line.length() - 1);
                    symbolTable.put(label, instructionAddress);
                    continue; // Labels do not count as instructions
                }
                instructionAddress++;
                // If a comment is inline (e.g., "D=A  // This is a comment"), remove it
                int commentIndex = line.indexOf("//");
                if (commentIndex != -1) {
                    line = line.substring(0, commentIndex).trim(); // Keep only the instruction
                }
            }
        } catch (IOException e) {
            System.err.println("An error occurred: " + e.getMessage());
        }
    }

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
            if (line.isEmpty() || line.startsWith("//") || (line.startsWith("(") && line.endsWith(")"))) {
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
            System.out.println("File copied successfully to: " + destinationFile);
        } catch (IOException e) {
            System.err.println("An error occurred: " + e.getMessage());
        }
    }

    public static String processLine(String line) {
        String result = "";
        // Parsing A-instruction
        if (line.indexOf("@") == 0) {
            if (line.substring(1).matches("\\d+")) {
                result = "0" + decimalToBinary15(extractDecimal(line));
            } else {
                int address;
                address = symbolTable.getOrDefault(line.substring(1), -1);
                if (address == -1) {
                    address = varTable.getOrDefault(line.substring(1), -1);
                    if (address == -1) {
                        address = 16 + varTable.size();
                        varTable.put(line.substring(1), address);
                    }
                }
                result = "0" + decimalToBinary15(address);
            }
        } 
        // Parsing C-instruction
        else {
            Map<String, String> cInstruction = parseCInstruction(line);
            result = "111"+cInstruction.get("comp")+cInstruction.get("dest")+cInstruction.get("jump");
        }
        return result;
    }

    public static String decimalToBinary15(int decimal) {
        return String.format("%15s", Integer.toBinaryString(decimal)).replace(' ', '0');
    }

    public static int extractDecimal(String instruction) {
        return Integer.parseInt(instruction.substring(1)); // Remove '@' and convert to int
    }

    public static Map<String, String> parseCInstruction(String instruction) {
        String dest = null;
        String comp = null;
        String jump = null;
    
        // Check if there is a jump part (;)
        if (instruction.contains(";")) {
            String[] parts = instruction.split(";");
            comp = parts[0].trim();
            jump = parts[1].trim();
        } else {
            comp = instruction; // Default to entire instruction if no ';' found
        }
    
        // Check if there is a dest part (=)
        if (comp.contains("=")) {
            String[] parts = comp.split("=");
            dest = parts[0].trim();
            comp = parts[1].trim();
        }

        comp = compMap.get(comp);
        dest = dest != null ? destMap.get(dest) : "000";
        jump = jump != null ? jumpMap.get(jump) : "000";
    
        // Store values in a map and return
        Map<String, String> result = new HashMap<>();
        result.put("dest", dest);
        result.put("comp", comp);
        result.put("jump", jump);
        return result;
    }
    

    public static void main(String[] args) throws Exception {

        File inputFile = new File(args[0]);
        if (inputFile.isFile() && args[0].endsWith(".asm")) {
            String outputFileName = args[0].replace(".asm", ".hack");
             // Source .asm file path
            String sourceFilePath = inputFile.getName();
            // Destination .hack file path
             // Call the method to copy the file
            firstPass(sourceFilePath);
            secondPass(sourceFilePath, outputFileName);
        }
    }
}
