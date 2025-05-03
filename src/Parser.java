import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Map;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.io.File;

public class Parser {

    private static BufferedWriter writer;

    private static enum TokenType {
        KEYWORD, IDENTIFIER, STRING_CONSTANT, INT_CONSTANT, SYMBOL
    }

    private static class Token {
        TokenType type;
        String value;
        Token(TokenType type, String value) {
            this.type = type;
            this.value = value;
        }
    }

    private static ArrayList<Token> currentTokenPhrase = new ArrayList<>();

    private static ArrayList<String> dividers = new ArrayList<>();
    private static ArrayList<Token> subExpression = new ArrayList<>();

    private static Stack<String> statementContextsStack = new Stack<>();
    // class, constructor, function, method, if, while

    private static int baseTabOffset = 1;

    private class CompilationEngine {

        private static void addNewLine(int tabsCount, String str, BufferedWriter file) {
            StringBuilder sb = new StringBuilder();
            sb.append("\n");
            for (int i = 0; i < tabsCount; i++) {
                sb.append("\t");
            }
            sb.append(str);
            try {
                file.write(sb.toString());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        private static void compileTerm(ArrayList<Token> termTokens, int tabOffset) {
            CompilationEngine.addNewLine(tabOffset, "<term>", writer);
            ArrayList<Token> subExpression;
            int i = 0;
            while (i < termTokens.size()) {
                Token token = termTokens.get(i);
                if (token.type == TokenType.SYMBOL) {
                    if (token.value.equals("(") || token.value.equals("[")) {
                        String divider = token.value.equals("[") ? "]" : ")";
                        CompilationEngine.addNewLine(tabOffset+1, "<symbol>" + token.value + "</symbol>", writer);
                        dividers.clear();
                        dividers.add(divider);
                        subExpression = getSubPhrase(i+1, dividers, termTokens);
                        compileExpression(subExpression, tabOffset+1);
                        i = i + subExpression.size() + 1;
                        subExpression.clear();
                    } else {
                        CompilationEngine.addNewLine(tabOffset+1, "<symbol>"+token.value+"</symbol>", writer);
                        i++;
                    }
                } else {
                    if (token.type == TokenType.IDENTIFIER) {
                        CompilationEngine.addNewLine(tabOffset+1, "<identifier>"+token.value+"</identifier>", writer);
                    } else if (token.type == TokenType.INT_CONSTANT) {
                        CompilationEngine.addNewLine(tabOffset+1, "<integerConstant>"+token.value+"</integerConstant>", writer);
                    } else if (token.type == TokenType.STRING_CONSTANT) {
                        CompilationEngine.addNewLine(tabOffset+1, "<stringConstant>"+token.value+"</stringConstant>", writer);
                    }
                    i++;
                }
            }
            CompilationEngine.addNewLine(tabOffset, "</term>", writer);
        }

        private static void compileExpression(ArrayList<Token> expressionTokens, int tabOffset) {
            CompilationEngine.addNewLine(tabOffset+1, "<expression>", writer);
            ArrayList<Token> subExpression;
            int i = 0;
            while (i < expressionTokens.size()) {
                if (expressionTokens.get(i).type == TokenType.SYMBOL) {
                    if (expressionTokens.get(i).value.equals("(")) {
                        CompilationEngine.addNewLine(tabOffset+2, "<symbol>(</symbol>", writer);
                        dividers.clear();
                        dividers.add(")");
                        subExpression = getSubPhrase(i+1, dividers, expressionTokens);
                        compileExpression(subExpression, tabOffset+2);
                        i = i + subExpression.size() + 1;
                        subExpression.clear();
                    } else {
                        CompilationEngine.addNewLine(tabOffset+2, "<symbol>"+expressionTokens.get(i).value+"</symbol>", writer);
                        i++;
                    }
                } else {
                    int j = i+1 < expressionTokens.size() ? i+1 : i;
                    Token nextToken = expressionTokens.get(j);
                    // Handling subroutine calls like Class.method(arg1,arg2) / arr[index] / func(arg,arg2)
                    if (nextToken.value.equals(".") || nextToken.value.equals("[") || nextToken.value.equals("(")) {
                        String divider = nextToken.value.equals("[") ? "]" : ")";
                        dividers.clear();
                        dividers.add(divider);
                        subExpression = getSubPhrase(i, dividers, expressionTokens);
                        compileTerm(subExpression, tabOffset+2);
                        i = i + subExpression.size()+1;
                        subExpression.clear();
                    } else {
                        subExpression = new ArrayList<>();
                        subExpression.add(expressionTokens.get(i));
                        compileTerm(subExpression, tabOffset+2);
                        subExpression.clear();
                        i++;
                    }
                }
            } 
            CompilationEngine.addNewLine(tabOffset+1, "</expression>", writer);
        }

        private static void compileLetStatement(int tabOffset) {
            //ArrayList<Token> subPhrase;
            CompilationEngine.addNewLine(tabOffset, "<letStatement>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<keyword>let</keyword>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<identifier>"+currentTokenPhrase.get(1).value+"</identifier>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<symbol>"+currentTokenPhrase.get(2).value+"</symbol>", writer);          
            if (currentTokenPhrase.get(2).value.equals("[")) {
                // dividers.clear();
                // dividers.add("]");
                // subPhrase = getSubPhrase(3, dividers, currentTokenPhrase);
                // compileExpression(subPhrase, tabOffset);
                // int endSubPhraseIndex = 3 + subPhrase.size();
                // CompilationEngine.addNewLine(tabOffset + 1, "<symbol>"+currentTokenPhrase.get(endSubPhraseIndex).value+"</symbol>", writer);
                // CompilationEngine.addNewLine(tabOffset + 1, "<symbol>"+currentTokenPhrase.get(endSubPhraseIndex+1).value+"</symbol>", writer);
                // dividers.clear();
                // dividers.add(";");
                // subPhrase = getSubPhrase(endSubPhraseIndex+2, dividers, currentTokenPhrase);
                // compileExpression(subPhrase, tabOffset);
            } else {
                // dividers.clear();
                // dividers.add(";");
                // subPhrase = getSubPhrase(3, dividers, currentTokenPhrase);
                handleSubphrase(";", 3, currentTokenPhrase, "compileExpression", tabOffset);
                //compileExpression(subExpression, tabOffset);
            }
            CompilationEngine.addNewLine(tabOffset + 1, "<symbol>;</symbol>", writer);  
            CompilationEngine.addNewLine(tabOffset, "</letStatement>", writer);
        }

        private static void compileIfStatement(String statement, int tabOffset) {
            String regex = "if\\s*(\\()(.+?)(\\))\\s*(\\{)";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(statement);
            CompilationEngine.addNewLine(tabOffset, "<ifStatement>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<keyword>if</keyword>", writer);
            if (matcher.find()) {
                CompilationEngine.addNewLine(tabOffset + 1, "<symbol>"+matcher.group(1)+"</symbol>", writer);
                
                CompilationEngine.addNewLine(tabOffset + 1, "<symbol>"+matcher.group(3)+"</symbol>", writer);
                CompilationEngine.addNewLine(tabOffset + 1, "<symbol>"+matcher.group(4)+"</symbol>", writer);
            }
            CompilationEngine.addNewLine(tabOffset + 1, "<statements>", writer);
        }

        private static void compileWhileStatement(String statement, int tabOffset) {
            String regex = "while\\s*(\\()(.+?)(\\))\\s*(\\{)";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(statement);
            CompilationEngine.addNewLine(tabOffset, "<whileStatement>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<keyword>while</keyword>", writer);
            if (matcher.find()) {
                CompilationEngine.addNewLine(tabOffset + 1, "<symbol>"+matcher.group(1)+"</symbol>", writer);
                CompilationEngine.addNewLine(tabOffset + 1, "<symbol>"+matcher.group(3)+"</symbol>", writer);
                CompilationEngine.addNewLine(tabOffset + 1, "<symbol>"+matcher.group(4)+"</symbol>", writer);
            }
            CompilationEngine.addNewLine(tabOffset + 1, "<statements>", writer);
        }

        private static void compileClassStatement(String statement, int tabOffset) {
            String regex = "class\\s+(\\w+)\\s*([{])";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(statement);
            CompilationEngine.addNewLine(tabOffset, "<class>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<keyword>class</keyword>", writer);
            if (matcher.find()) {
                CompilationEngine.addNewLine(tabOffset + 1, "<identifier>"+matcher.group(1)+"</identifier>", writer);
                CompilationEngine.addNewLine(tabOffset + 1, "<symbol>"+matcher.group(2)+"</symbol>", writer);
            }
        }

        private static void compileVarStatement(String statement, int tabOffset) {
            String regex = "(static|field|var)\\s+(\\w+)\\s+([\\w, ]+);";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(statement);
            CompilationEngine.addNewLine(tabOffset, "<classVarDec>", writer);
            if (matcher.find()) {
                CompilationEngine.addNewLine(tabOffset+1, "<keyword>"+matcher.group(1)+"</keyword>", writer);
                CompilationEngine.addNewLine(tabOffset+1, "<keyword>"+matcher.group(2)+"</keyword>", writer);
                String[] varNames = Arrays.stream(matcher.group(3).split(",")).map(String::trim).toArray(String[]::new);
                for (String varName : varNames) {
                    CompilationEngine.addNewLine(tabOffset+1, "<identifier>"+varName+"</identifier>", writer);
                    if (varName != varNames[varNames.length - 1]) {
                        CompilationEngine.addNewLine(tabOffset+1, "<symbol>,</symbol>", writer);
                    } else {
                        CompilationEngine.addNewLine(tabOffset+1, "<symbol>;</symbol>", writer);
                    }
                }
            }
            CompilationEngine.addNewLine(tabOffset, "</classVarDec>", writer);
        }

        private static void compileSubroutineStatement(String statement, int tabOffset) {
            String regex = "(function|constructor|method)\\s+(\\w+)\\s+(\\w+)\\s*(\\()(.+?)(\\))\\s*(\\{)";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(statement);
            CompilationEngine.addNewLine(tabOffset, "<subroutineDec>", writer);
            if (matcher.find()) {
                CompilationEngine.addNewLine(tabOffset+1, "<keyword>" + matcher.group(1) + "</keyword>", writer);
                CompilationEngine.addNewLine(tabOffset+1, "<keyword>" + matcher.group(2) + "</keyword>", writer);
                CompilationEngine.addNewLine(tabOffset+1, "<identifier>" + matcher.group(3) + "</identifier>", writer);
                CompilationEngine.addNewLine(tabOffset+1, "<symbol>" + matcher.group(4) + "</symbol>", writer);
                String[] paramList = Arrays.stream(matcher.group(5).split(",")).map(String::trim).toArray(String[]::new);
                for (String param : paramList) {
                    String[] paramParts = param.split(" ");
                    if (paramParts.length == 2) {
                        CompilationEngine.addNewLine(tabOffset+1, "<keyword>" + paramParts[0] + "</keyword>", writer);
                        CompilationEngine.addNewLine(tabOffset+1, "<identifier>" + paramParts[1] + "</identifier>", writer);
                    }
                    if (param != paramList[paramList.length - 1]) {
                        CompilationEngine.addNewLine(tabOffset+1, "<symbol>,</symbol>", writer);
                    } else {
                        CompilationEngine.addNewLine(tabOffset+1, "<symbol>)</symbol>", writer);
                    }
                }
                CompilationEngine.addNewLine(tabOffset+1, "<subroutineBody>", writer);
                tabOffset++;
                CompilationEngine.addNewLine(tabOffset+1, "<symbol>" + matcher.group(7) + "</symbol>", writer);
            } else {
                System.out.println("No match found.");
            }
        }

        private static void closeStatement(String currentStatement, int tabOffset) {
            if (currentStatement == "if") {
                CompilationEngine.addNewLine(tabOffset - 1, "</statements>", writer);
                CompilationEngine.addNewLine(tabOffset - 1, "<symbol>}</symbol>", writer);
                CompilationEngine.addNewLine(tabOffset - 2, "</ifStatement>", writer);
            } else if (currentStatement == "while") {
                CompilationEngine.addNewLine(tabOffset - 1, "</statements>", writer);
                CompilationEngine.addNewLine(tabOffset - 1, "<symbol>}</symbol>", writer);
                CompilationEngine.addNewLine(tabOffset - 2, "</whileStatement>", writer);
            } else if (currentStatement == "class") {
                CompilationEngine.addNewLine(tabOffset - 1, "<symbol>}</symbol>", writer);
                CompilationEngine.addNewLine(tabOffset - 2, "</class>", writer);
            } else if (currentStatement == "constructor" || currentStatement == "function" || currentStatement == "method") {
                CompilationEngine.addNewLine(tabOffset, "<symbol>}</symbol>", writer);
                CompilationEngine.addNewLine(tabOffset - 1, "</subroutineBody>", writer);
                CompilationEngine.addNewLine(tabOffset - 2, "</subroutineDec>", writer);
            }
        }

    }

    private static int handleSubphrase(String divider, int index, ArrayList<Token> currentTokenPhrase, String methodName, int tabOffset) {
        dividers.clear();
        subExpression.clear();
        dividers.add(divider);
        subExpression = getSubPhrase(index, dividers, currentTokenPhrase);
        if (methodName == "compileExpression") {
            CompilationEngine.compileExpression(subExpression, tabOffset);
        } else if (methodName == "compileTerm") {
            CompilationEngine.compileTerm(subExpression, tabOffset);
        }
        return subExpression.size();
    }

    private static final List<String> symbols = Arrays.asList(
        "{", "}", "(", ")", "[", "]", ".", ",", ";", "+", "-", "*", "/", "&", "|", "<", ">", "=", "~"
    );

    private static final List<String> keywords = Arrays.asList(
        "class", "constructor", "function", "method", "field", "static", "var",
        "int", "char", "boolean", "void", "true", "false", "null", "this",
        "let", "do", "if", "else", "while", "return"
    );

    private static void tokenizeString(String input) {
        int i = 0;
        String currentToken = "";
        Boolean processingStringConst = false;
        while (i < input.length()) {
            char c = input.charAt(i);
            if (c == '\"' && processingStringConst == false) {
                processingStringConst = true;
            } else if (c != '\"' && processingStringConst == true) {
                currentToken += c;
            } else if (c == '\"' && processingStringConst == true) {
                currentTokenPhrase.add(new Token(TokenType.STRING_CONSTANT, currentToken));
                processingStringConst = false;
                currentToken = "";
                checkTokenPhraseValidity();
            } else if (symbols.contains(String.valueOf(c)) | Character.isWhitespace(c)) {
                prepareToken(currentToken);
                currentToken = "";
                if (symbols.contains(String.valueOf(c))) {
                    currentTokenPhrase.add(new Token(TokenType.SYMBOL, String.valueOf(c)));
                    checkTokenPhraseValidity();
                }
            } else {
                if (currentToken.length() > 0 && Character.isDigit(currentToken.charAt(0)) && !Character.isDigit(c)) {
                    System.out.println("Error: Invalid token: " + currentToken);
                } else {
                    currentToken += c;
                }
            }
            i++;
        }
        prepareToken(currentToken);
        currentToken = "";
    }

    private static void prepareToken(String currentToken) {
        if (currentToken.length() > 0) {
            if (keywords.contains(currentToken)) {
                currentTokenPhrase.add(new Token(TokenType.KEYWORD, currentToken));
                checkTokenPhraseValidity();
            } else if (Character.isDigit(currentToken.charAt(0))) {
                currentTokenPhrase.add(new Token(TokenType.INT_CONSTANT, currentToken));
                checkTokenPhraseValidity();
            } else {
                currentTokenPhrase.add(new Token(TokenType.IDENTIFIER, currentToken));
                checkTokenPhraseValidity();
            }
        }
    }

    private static ArrayList<Token> getSubPhrase(int startIndex, ArrayList<String> dividers, ArrayList<Token> inputTokenPhrase) {
        ArrayList<Token> subPhrase = new ArrayList<>();
        int openParenthesesCount = 1;
        String currentSubroutineDivider = dividers.contains(")") ? ")" : dividers.contains("]") ? "]" : null;
        String currentSubroutineOpen = dividers.contains(")") ? "(" : dividers.contains("]") ? "[" : null;
        for (int i = startIndex; i < inputTokenPhrase.size(); i++) {
            Token token = inputTokenPhrase.get(i);
            if (currentSubroutineDivider != null) {
                if (token.value.equals(currentSubroutineOpen)) {
                    openParenthesesCount++;
                } else if (token.value.equals(currentSubroutineDivider)) {
                    openParenthesesCount--;
                }
                if (openParenthesesCount == 0) {
                    break;
                } 
            } else {
                if (dividers.contains(token.value) ) {
                    break;
                }
            }
            subPhrase.add(token);
        }
        return subPhrase;
    }

    private static void checkTokenPhraseValidity() {
        Token startToken = currentTokenPhrase.get(0); // Any phrase must start with a keyword
        if (startToken.type == TokenType.KEYWORD) {
            if (startToken.value.equals("let")) {
                checkLetStatementValidity();
            }
        } else {
            System.out.println("Error: The first token must be a keyword.");
        }
    }

    private static void checkLetStatementValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals(";")) {
            CompilationEngine.compileLetStatement(baseTabOffset);
            currentTokenPhrase.clear();
        } 
    }

    private static void printTokens(ArrayList<Token> tokens) {
        System.out.println("Start Tokens:");
        for (Token token : tokens) {
            if (token.type == TokenType.KEYWORD) {
                System.out.println("Keyword: " + token.value);
            } else if (token.type == TokenType.IDENTIFIER) {
                System.out.println("Identifier: " + token.value);
            } else if (token.type == TokenType.STRING_CONSTANT) {
                System.out.println("String Constant: " + token.value);
            } else if (token.type == TokenType.INT_CONSTANT) {
                System.out.println("Integer Constant: " + token.value);
            } else if (token.type == TokenType.SYMBOL) {
                System.out.println("Symbol: " + token.value);
            }
        }
        System.out.println("End Tokens:");
    }

    private static void secondPass(File inputFile, String outputFileName) throws IOException {
        writer = new BufferedWriter(new FileWriter(outputFileName));
        try {
            try (BufferedReader reader = new BufferedReader(new FileReader(inputFile))) {

                String line;

                while ((line = reader.readLine()) != null) {

                    line = line.trim();
                    if (line.isEmpty() || line.startsWith("//")) {
                        continue;
                    }
                    int commentIndex = line.indexOf("//");
                    if (commentIndex != -1) {
                        line = line.substring(0, commentIndex).trim();
                    }
                    
                    tokenizeString(line);
                }

            } catch (IOException e) {
                System.err.println("An error occurred while processing file: " + inputFile.getName());
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            writer.close();
        } 
    }

    public static void main(String[] args) throws Exception {
        File inputFile = new File(args[0]);
        String outputFileName = args[0].replace(".jack", ".xml");
        secondPass(inputFile, outputFileName);
    }
}

// \n (new line)
// \t (tab)