import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.File;

public class JackCompiler {

    private static BufferedWriter writer;

    private static void secondPass(File inputFile, String outputFileName) throws IOException {
        Vars.compilerCodeBuilder = new StringBuilder();
        writer = new BufferedWriter(new FileWriter(outputFileName));
        try {
            try (BufferedReader reader = new BufferedReader(new FileReader(inputFile))) {

                String line;

                while ((line = reader.readLine()) != null && Vars.isValid) {

                    line = line.trim();
                    if (line.isEmpty() || line.startsWith("//")) {
                        continue;
                    }
                    int commentIndex = line.indexOf("//");
                    if (commentIndex != -1) {
                        line = line.substring(0, commentIndex).trim();
                    }
                    
                    Tokenizer.tokenizeString(line);
                }

                writer.write(Vars.compilerCodeBuilder.toString());

            } catch (IOException e) {
                System.err.println("An error occurred while processing file: " + inputFile.getName());
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            writer.close();
            Vars.currentTokenPhrase.clear();
            Vars.statementContextsStack.clear();
            Vars.classSymbolTable.clear();
            Vars.fieldCounter = 0;
            Vars.staticCounter = 0;
            Vars.argumentCounter = 0;
            Vars.localCounter = 0;
            Vars.processingComment = false;
            Vars.prevTerm = null;
        } 
    }

    public static void main(String[] args) throws Exception {
        if (args.length == 0) {
            System.err.println("Please provide a file or directory path as an argument.");
            return;
        }
        File inputFile = new File(args[0]);
        if (inputFile.isFile() && args[0].endsWith(".jack")) {
            String outputFileName = args[0].replace(".jack", ".vm");
            secondPass(inputFile, outputFileName);
        } else if (inputFile.isDirectory()) {

            File[] files = inputFile.listFiles((dir, name) -> name.endsWith(".jack"));

            if (files == null || files.length == 0) {
                System.err.println("No .jack files found in the directory.");
                return;
            }

            for (File file : files) {
                if (Vars.isValid) {
                    String outputFileName = file.getAbsolutePath().replace(".jack", ".vm");
                    secondPass(file, outputFileName);
                } else {
                    break;
                }
            }

            if (Vars.isValid) {
                for (String calledSubroutine : Vars.calledSubroutines) {
                    if (!Vars.declaredSubroutines.contains(calledSubroutine)) {
                        Vars.isValid = false;
                        Vars.errorMsg = "No such subroutine: " + calledSubroutine;
                        break;
                    }
                }
            }

            System.out.println(Vars.errorMsg);
            
            // String[] vmArgs = {inputFile.getName()};
            // VMTranslator.main(vmArgs);
        }
    }
}