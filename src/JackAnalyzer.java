import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Stack;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.io.File;

public class JackAnalyzer {

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

    private static Boolean isFirstStatment = true;

    private static Stack<String> statementContextsStack = new Stack<>(); // class, constructor, function, method, if, while
    
    private static int baseTabOffset = 0;

    private static class CompilationEngine {

        private static void addNewLine(int tabsCount, String str, BufferedWriter file) {
            StringBuilder sb = new StringBuilder();
            if (!str.equals("<class>")) {
                sb.append("\n");
            }
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
            int i = 0;
            while (i < termTokens.size()) {
                Token token = termTokens.get(i);
                if (token.type == TokenType.SYMBOL) {
                    if (token.value.equals("(") || token.value.equals("[")) {
                        String divider = token.value.equals("(") ? ")" : "]";
                        CompilationEngine.addNewLine(tabOffset+1, "<symbol> "  + token.value + " </symbol>", writer);
                        if (token.value.equals("(") && i > 0) {
                            CompilationEngine.addNewLine(tabOffset+2, "<expressionList>", writer);
                        }
                        processExpressionList(getSubExpression(i+1, divider, termTokens), tabOffset+1);
                        if (token.value.equals("(") && i > 0) {
                            CompilationEngine.addNewLine(tabOffset+2, "</expressionList>", writer);
                        }
                        CompilationEngine.addNewLine(tabOffset+1, "<symbol> "  + divider + " </symbol>", writer);
                        break;
                    } else if (token.value.equals(".")) {
                        CompilationEngine.addNewLine(tabOffset+1, "<symbol> . </symbol>", writer);
                        i++;
                    } else if (token.value.equals("-") || token.value.equals("~")) {
                        CompilationEngine.addNewLine(tabOffset+1, "<symbol> " + token.value + " </symbol>", writer);
                        termTokens.subList(0, 1).clear();
                        compileTerm(termTokens, tabOffset+1);
                        break;
                    }
                } else {
                    if (token.type == TokenType.IDENTIFIER) {
                        CompilationEngine.addNewLine(tabOffset+1, "<identifier> "+token.value+" </identifier>", writer);
                    } else if (token.type == TokenType.INT_CONSTANT) {
                        CompilationEngine.addNewLine(tabOffset+1, "<integerConstant> "+token.value+" </integerConstant>", writer);
                    } else if (token.type == TokenType.STRING_CONSTANT) {
                        CompilationEngine.addNewLine(tabOffset+1, "<stringConstant> "+token.value+" </stringConstant>", writer);
                    } else if (token.type == TokenType.KEYWORD) {
                        CompilationEngine.addNewLine(tabOffset+1, "<keyword> "+token.value+" </keyword>", writer);
                    }
                    i++;
                }
            }
            CompilationEngine.addNewLine(tabOffset, "</term>", writer);
        }

        private static void processExpressionList(ArrayList<Token> expressionList, int tabOffset) {
            if (expressionList.size() > 0) {
                ArrayList<Token> subExpression = getSubExpression(0, ",", expressionList);
                compileExpression(subExpression, tabOffset);
                if (subExpression.size()+1 < expressionList.size()) {
                    expressionList.subList(0, subExpression.size()+1).clear();
                    CompilationEngine.addNewLine(tabOffset+1, "<symbol> , </symbol>", writer);
                    processExpressionList(expressionList, tabOffset);
                }
            }
        } 

        private static String escapeXml(String symbolValue) {
            switch (symbolValue) {
                case "<": return "&lt;";
                case ">": return "&gt;";
                case "&": return "&amp;";
                default: return symbolValue;
            }
        }

        private static void compileExpression(ArrayList<Token> expressionTokens, int tabOffset) {
            CompilationEngine.addNewLine(tabOffset+1, "<expression>", writer);
            ArrayList<Token> currentTerm = null;
            int i = 0;
            while (i < expressionTokens.size()) {
                if (expressionTokens.get(i).type == TokenType.SYMBOL) {
                    if (expressionTokens.get(i).value.equals("(")) {
                        currentTerm = getSubExpression(i+1, ")", expressionTokens);
                        currentTerm.add(0,new Token(TokenType.SYMBOL, "("));
                        currentTerm.add(new Token(TokenType.SYMBOL, ")"));
                        compileTerm(currentTerm, tabOffset+2);
                        i = i + currentTerm.size();
                    } else if (expressionTokens.get(i).value.equals("-") || expressionTokens.get(i).value.equals("~")) {
                        if (currentTerm == null) {
                            Token nextToken = expressionTokens.get(i+1);
                            // Handling cases like: ~(key = 0)
                            if (nextToken.value.equals("(")) {
                                currentTerm = getSubExpression(i, ")", expressionTokens);
                            } else {
                                currentTerm = getSubExpression(i, "+*/&|<>=;", expressionTokens);
                            }
                            i = i + currentTerm.size();
                            compileTerm(currentTerm, tabOffset+2);
                        } else {
                            CompilationEngine.addNewLine(tabOffset+2, "<symbol> "+ expressionTokens.get(i).value+" </symbol>", writer);
                            currentTerm = null;
                            i++;
                        }
                    } else {
                        CompilationEngine.addNewLine(tabOffset+2, "<symbol> "+escapeXml(expressionTokens.get(i).value)+" </symbol>", writer);
                        currentTerm = null;
                        i++;
                    }
                } else {
                    int j = i+1 < expressionTokens.size() ? i+1 : i;
                    Token nextToken = expressionTokens.get(j);
                    // Handling subroutine calls like Class.method(arg1,arg2) / arr[index] / func(arg,arg2)
                    if (nextToken.value.equals(".") || nextToken.value.equals("[") || nextToken.value.equals("(")) {
                        String divider = nextToken.value.equals("[") ? "]" : ")";
                        currentTerm = getSubExpression(i, divider, expressionTokens);
                        compileTerm(currentTerm, tabOffset+2);
                        i = i + currentTerm.size()+1;
                    } else {
                        currentTerm = new ArrayList<>();
                        currentTerm.add(expressionTokens.get(i));
                        compileTerm(currentTerm, tabOffset+2);
                        i++;
                    }
                }
            } 
            CompilationEngine.addNewLine(tabOffset+1, "</expression>", writer);
        }

        private static void compileLetStatement(int tabOffset) {
            setFirstStatment();
            ArrayList<Token> subExpression;
            CompilationEngine.addNewLine(tabOffset, "<letStatement>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<keyword> let </keyword>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<identifier> "+currentTokenPhrase.get(1).value+" </identifier>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<symbol> "+currentTokenPhrase.get(2).value+" </symbol>", writer);          
            if (currentTokenPhrase.get(2).value.equals("[")) {
                subExpression = getSubExpression(3, "]", currentTokenPhrase);
                compileExpression(subExpression, tabOffset+1);
                int endSubPhraseIndex = 3 + subExpression.size();
                CompilationEngine.addNewLine(tabOffset + 1, "<symbol> ] </symbol>", writer);
                CompilationEngine.addNewLine(tabOffset + 1, "<symbol> = </symbol>", writer);
                subExpression = getSubExpression(endSubPhraseIndex+2, ";", currentTokenPhrase);
                compileExpression(subExpression, tabOffset);
            } else {
                subExpression = getSubExpression(3, ";", currentTokenPhrase);
                compileExpression(subExpression, tabOffset);
            }
            CompilationEngine.addNewLine(tabOffset + 1, "<symbol> ; </symbol>", writer);  
            CompilationEngine.addNewLine(tabOffset, "</letStatement>", writer);
        }

        private static void compileIfStatement(int tabOffset) {
            setFirstStatment();
            statementContextsStack.push("if");
            CompilationEngine.addNewLine(tabOffset, "<ifStatement>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<keyword> if </keyword>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<symbol> ( </symbol>", writer);
            ArrayList<Token> subExpression = getSubExpression(2, ")", currentTokenPhrase);
            compileExpression(subExpression, tabOffset + 1);
            CompilationEngine.addNewLine(tabOffset + 1, "<symbol> ) </symbol>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<symbol> { </symbol>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<statements>", writer);
        }

        private static void compileElseStatement(int tabOffset) {
            statementContextsStack.push("else");
            CompilationEngine.addNewLine(tabOffset + 1, "<keyword> else </keyword>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<symbol> { </symbol>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<statements>", writer);
        }

        private static void compileWhileStatement(int tabOffset) {
            setFirstStatment();
            statementContextsStack.push("while");
            CompilationEngine.addNewLine(tabOffset, "<whileStatement>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<keyword> while </keyword>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<symbol> ( </symbol>", writer);
            ArrayList<Token> subExpression = getSubExpression(2, ")", currentTokenPhrase);
            compileExpression(subExpression, tabOffset + 1);
            CompilationEngine.addNewLine(tabOffset + 1, "<symbol> ) </symbol>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<symbol> { </symbol>", writer);
            CompilationEngine.addNewLine(tabOffset + 1, "<statements>", writer);
        }

        private static void compileClassStatement() {
            statementContextsStack.push("class");
            CompilationEngine.addNewLine(baseTabOffset, "<class>", writer);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<keyword> class </keyword>", writer);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<identifier> " + currentTokenPhrase.get(1).value + " </identifier>", writer);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<symbol> { </symbol>", writer);
        }

        private static void compileClassVarStatement() {
            CompilationEngine.addNewLine(baseTabOffset, "<classVarDec>", writer);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<keyword> " + currentTokenPhrase.get(0).value + " </keyword>", writer);
            if (currentTokenPhrase.get(1).type == TokenType.KEYWORD) {
                CompilationEngine.addNewLine(baseTabOffset + 1, "<keyword> " + currentTokenPhrase.get(1).value + " </keyword>", writer);
            } else if (currentTokenPhrase.get(1).type == TokenType.IDENTIFIER) {
                CompilationEngine.addNewLine(baseTabOffset + 1, "<identifier> " + currentTokenPhrase.get(1).value + " </identifier>", writer);
            }
            processClassVarList(getSubExpression(2, ";", currentTokenPhrase), baseTabOffset + 1, false);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<symbol> ; </symbol>", writer);
            CompilationEngine.addNewLine(baseTabOffset, "</classVarDec>", writer);
        }

        private static void processClassVarList(ArrayList<Token> classVarList, int tabOffset, Boolean showType) {
            if (classVarList.size() > 0) {
                ArrayList<Token> currentSubList = getSubExpression(0, ",", classVarList);
                if (showType) {
                    CompilationEngine.addNewLine(tabOffset + 1, "<keyword> " + currentSubList.get(0).value + " </keyword>", writer);
                    CompilationEngine.addNewLine(tabOffset + 1, "<identifier> " + currentSubList.get(1).value + " </identifier>", writer);
                } else {
                    CompilationEngine.addNewLine(tabOffset + 1, "<identifier> " + currentSubList.get(0).value + " </identifier>", writer);
                }
                if (currentSubList.size()+1 < classVarList.size()) {
                    classVarList.subList(0, currentSubList.size()+1).clear();
                    CompilationEngine.addNewLine(tabOffset+1, "<symbol> , </symbol>", writer);
                    processClassVarList(classVarList, tabOffset, showType);
                }
            }
        }

        private static void compileVarStatement(int tabOffset) {
            CompilationEngine.addNewLine(tabOffset, "<varDec>", writer);
            CompilationEngine.addNewLine(tabOffset+1, "<keyword> var </keyword>", writer);
            if (currentTokenPhrase.get(1).type == TokenType.KEYWORD) {
                CompilationEngine.addNewLine(tabOffset+1, "<keyword> " + currentTokenPhrase.get(1).value + " </keyword>", writer);
            } else {
                CompilationEngine.addNewLine(tabOffset+1, "<identifier> " + currentTokenPhrase.get(1).value + " </identifier>", writer);
            }
            processClassVarList(getSubExpression(2, ";", currentTokenPhrase), tabOffset, false);
            CompilationEngine.addNewLine(tabOffset+1, "<symbol> ; </symbol>", writer);
            CompilationEngine.addNewLine(tabOffset, "</varDec>", writer);
        }

        private static void compileSubroutineStatement() {
            statementContextsStack.push(currentTokenPhrase.get(0).value);
            CompilationEngine.addNewLine(baseTabOffset, "<subroutineDec>", writer);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<keyword> " + currentTokenPhrase.get(0).value + " </keyword>", writer);
            if (currentTokenPhrase.get(1).type == TokenType.KEYWORD) {
                CompilationEngine.addNewLine(baseTabOffset + 1, "<keyword> " + currentTokenPhrase.get(1).value + " </keyword>", writer);
            } else if (currentTokenPhrase.get(1).type == TokenType.IDENTIFIER) {
                CompilationEngine.addNewLine(baseTabOffset + 1, "<identifier> " + currentTokenPhrase.get(1).value + " </identifier>", writer);
            }
            CompilationEngine.addNewLine(baseTabOffset + 1, "<identifier> " + currentTokenPhrase.get(2).value + " </identifier>", writer);
            CompilationEngine.addNewLine(baseTabOffset+1, "<symbol> ( </symbol>", writer);
            CompilationEngine.addNewLine(baseTabOffset+1, "<parameterList>", writer);
            processClassVarList(getSubExpression(4, ")", currentTokenPhrase), baseTabOffset+1, true);
            CompilationEngine.addNewLine(baseTabOffset+1, "</parameterList>", writer);
            CompilationEngine.addNewLine(baseTabOffset+1, "<symbol> ) </symbol>", writer);
            CompilationEngine.addNewLine(baseTabOffset+1, "<subroutineBody>", writer);
            CompilationEngine.addNewLine(baseTabOffset+1, "<symbol> { </symbol>", writer);
        }

        private static void setFirstStatment() {
            if (isFirstStatment) {
                CompilationEngine.addNewLine(baseTabOffset-1, "<statements>", writer);
                isFirstStatment = false;
            }
        }

        private static void compileDoStatement() {
            int expressionListStartIndex = 0;
            setFirstStatment();
            CompilationEngine.addNewLine(baseTabOffset, "<doStatement>", writer);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<keyword> do </keyword>", writer);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<identifier> " + currentTokenPhrase.get(1).value + " </identifier>", writer);
            if (currentTokenPhrase.get(2).value.equals(".")) {
                CompilationEngine.addNewLine(baseTabOffset + 1, "<symbol> . </symbol>", writer);
                CompilationEngine.addNewLine(baseTabOffset + 1, "<identifier> " + currentTokenPhrase.get(3).value + " </identifier>", writer);
                expressionListStartIndex = 5;
            } else {
                expressionListStartIndex = 3;
            }
            CompilationEngine.addNewLine(baseTabOffset + 1, "<symbol> ( </symbol>", writer);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<expressionList>", writer);
            processExpressionList(getSubExpression(expressionListStartIndex, ")", currentTokenPhrase), baseTabOffset+1);
            CompilationEngine.addNewLine(baseTabOffset + 1, "</expressionList>", writer);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<symbol> ) </symbol>", writer);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<symbol> ; </symbol>", writer);
            CompilationEngine.addNewLine(baseTabOffset, "</doStatement>", writer);
        }

        private static void compileReturnStatement() {
            isFirstStatment = true;
            CompilationEngine.addNewLine(baseTabOffset, "<returnStatement>", writer);
            CompilationEngine.addNewLine(baseTabOffset + 1, "<keyword> return </keyword>", writer);
            if (currentTokenPhrase.size() > 2) {
                ArrayList<Token> subExpression = getSubExpression(1, ";", currentTokenPhrase);
                compileExpression(subExpression, baseTabOffset + 1);
            }
            CompilationEngine.addNewLine(baseTabOffset + 1, "<symbol> ; </symbol>", writer);
            CompilationEngine.addNewLine(baseTabOffset, "</returnStatement>", writer);
            CompilationEngine.addNewLine(baseTabOffset-1, "</statements>", writer);
        }

        private static void closeStatement(String currentStatement) {
            if (currentStatement.equals("if")) {
                CompilationEngine.addNewLine(baseTabOffset+1, "</statements>", writer);
                CompilationEngine.addNewLine(baseTabOffset+1, "<symbol> } </symbol>", writer);
                CompilationEngine.addNewLine(baseTabOffset, "</ifStatement>", writer);
            } else if (currentStatement.equals("if else")) {
                CompilationEngine.addNewLine(baseTabOffset+1, "</statements>", writer);
                CompilationEngine.addNewLine(baseTabOffset+1, "<symbol> } </symbol>", writer);
            } else if (currentStatement.equals("else")) {
                CompilationEngine.addNewLine(baseTabOffset+1, "</statements>", writer);
                CompilationEngine.addNewLine(baseTabOffset+1, "<symbol> } </symbol>", writer);
                CompilationEngine.addNewLine(baseTabOffset, "</ifStatement>", writer);
            } else if (currentStatement.equals("while")) {
                CompilationEngine.addNewLine(baseTabOffset+1, "</statements>", writer);
                CompilationEngine.addNewLine(baseTabOffset+1, "<symbol> } </symbol>", writer);
                CompilationEngine.addNewLine(baseTabOffset, "</whileStatement>", writer);
            } else if (currentStatement.equals("class")) {
                CompilationEngine.addNewLine(baseTabOffset+1, "<symbol> } </symbol>", writer);
                CompilationEngine.addNewLine(baseTabOffset, "</class>", writer);
            } else if (currentStatement.equals("constructor") || currentStatement.equals("function") || currentStatement.equals("method")) {
                CompilationEngine.addNewLine(baseTabOffset+1, "<symbol> } </symbol>", writer);
                CompilationEngine.addNewLine(baseTabOffset+1, "</subroutineBody>", writer);
                CompilationEngine.addNewLine(baseTabOffset, "</subroutineDec>", writer);
            }
        }
    }

    private static final List<String> symbols = Arrays.asList(
        "{", "}", "(", ")", "[", "]", ".", ",", ";", "+", "-", "*", "/", "&", "|", "<", ">", "=", "~"
    );

    private static final List<String> keywords = Arrays.asList(
        "class", "constructor", "function", "method", "field", "static", "var",
        "int", "char", "boolean", "void", "true", "false", "null", "this",
        "let", "do", "if", "else", "while", "return"
    );

    private static Boolean processingComment = false;

    private static void tokenizeString(String input) {

        int i = 0;
        String currentToken = "";
        Boolean processingStringConst = false;

        while (i < input.length()) {

            char c = input.charAt(i);

            if (c == '/' && i+1 < input.length() && input.charAt(i+1) == '*') {
                processingComment = true;
                i++;
            } 

            if (processingComment == false) {
                if (c == '\"' && processingStringConst == false) {
                    processingStringConst = true;
                } else if (c != '\"' && processingStringConst == true) {
                    currentToken += c;
                } else if (c == '\"' && processingStringConst == true) {
                    currentTokenPhrase.add(new Token(TokenType.STRING_CONSTANT, currentToken));
                    processingStringConst = false;
                    currentToken = "";
                    checkCurrentTokenPhraseValidity();
                } else if (symbols.contains(String.valueOf(c)) | Character.isWhitespace(c)) {
                    prepareToken(currentToken);
                    currentToken = "";
                    if (symbols.contains(String.valueOf(c))) {
                        currentTokenPhrase.add(new Token(TokenType.SYMBOL, String.valueOf(c)));
                        checkCurrentTokenPhraseValidity();
                    }
                } else {
                    if (currentToken.length() > 0 && Character.isDigit(currentToken.charAt(0)) && !Character.isDigit(c)) {
                        System.out.println("Error: Invalid token: " + currentToken);
                    } else {
                        currentToken += c;
                    }
                }
                i++;
            } else {
                if (c == '*' && i+1 < input.length() && input.charAt(i+1) == '/') {
                    processingComment = false; 
                    i += 2;
                } else {
                    i++;
                }
            }
            
            
        }
        prepareToken(currentToken);
        currentToken = "";
    }

    private static void prepareToken(String currentToken) {
        if (currentToken.length() > 0) {
            if (keywords.contains(currentToken)) {
                currentTokenPhrase.add(new Token(TokenType.KEYWORD, currentToken));
                checkCurrentTokenPhraseValidity();
            } else if (Character.isDigit(currentToken.charAt(0))) {
                currentTokenPhrase.add(new Token(TokenType.INT_CONSTANT, currentToken));
                checkCurrentTokenPhraseValidity();
            } else {
                currentTokenPhrase.add(new Token(TokenType.IDENTIFIER, currentToken));
                checkCurrentTokenPhraseValidity();
            }
        }
    }

    private static ArrayList<Token> getSubExpression(int startIndex, String divider, ArrayList<Token> inputTokenPhrase) {
        int openParenthesesCount = 1;
        ArrayList<Token> subPhrase = new ArrayList<>();
        String currentSubroutineOpen = divider.contains(")") ? "(" : divider.contains("]") ? "[" : null;
        for (int i = startIndex; i < inputTokenPhrase.size(); i++) {
            Token token = inputTokenPhrase.get(i);
            if (token.type == TokenType.SYMBOL) {
                if (token.value.equals(currentSubroutineOpen)) {
                    openParenthesesCount++;
                } else if (divider.contains(token.value)) {
                    openParenthesesCount--;
                    if (openParenthesesCount == 0) {
                        break;
                    }
                }
            } 
            subPhrase.add(token);
        }
        return subPhrase;
    }

    private static Boolean waitingForNextToken = false;
    
    private static void checkCurrentTokenPhraseValidity() {
        Token startToken = currentTokenPhrase.get(0);
        if (waitingForNextToken == true) {
            if (startToken.value.equals("else")) {
                CompilationEngine.closeStatement("if else");
            } else {
                CompilationEngine.closeStatement("if");
            }
            baseTabOffset-=2;
            waitingForNextToken = false;
        }
        if (startToken.type == TokenType.KEYWORD) {
            if (startToken.value.equals("let")) {
                checkLetStatementValidity(baseTabOffset);
            } else if (startToken.value.equals("if")) {
                checkIfStatementValidity(baseTabOffset);
            } else if (startToken.value.equals("else")) {
                checkElseStatementValidity(baseTabOffset);
            } else if (startToken.value.equals("while")) {
                checkWhileStatementValidity(baseTabOffset);
            } else if (startToken.value.equals("class")) {
                checkClassStatementValidity();
            } else if (startToken.value.equals("static") || startToken.value.equals("field")) {
                checkClassVarValidity();
            } else if (startToken.value.equals("constructor") || startToken.value.equals("function") || startToken.value.equals("method")) {
                checkSubroutineStatementValidity();
            } else if (startToken.value.equals("var")) {
                checkVarStatementValidity();
            } else if (startToken.value.equals("do")) {
                checkDoStatementValidity();
            } else if (startToken.value.equals("return")) {
                checkReturnStatementValidity();
            }
        } else if (startToken.value.equals("}")) {
            if (!statementContextsStack.isEmpty()) {
                String currentContext = statementContextsStack.pop();
                if (currentContext.equals("if")) {
                    // cannot close 'if' right now, need to wait for the next token, if it is 'else' or other token
                    waitingForNextToken = true;
                } else {
                    baseTabOffset-=2;
                    CompilationEngine.closeStatement(currentContext);
                }
                currentTokenPhrase.clear();
            } else {
                System.out.println("Error: Unmatched closing braket.");
            }
        } else {
            System.out.println("Error: The first token must be a keyword.");
        }
    }

    private static void checkReturnStatementValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals(";")) {
            CompilationEngine.compileReturnStatement();
            currentTokenPhrase.clear();
        } 
    }

    private static void checkDoStatementValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals(";")) {
            CompilationEngine.compileDoStatement();
            currentTokenPhrase.clear();
        }
    }

    private static void checkVarStatementValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals(";")) {
            CompilationEngine.compileVarStatement(baseTabOffset);
            currentTokenPhrase.clear();
        }
    }

    private static void checkSubroutineStatementValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals("{")) {
            CompilationEngine.compileSubroutineStatement();
            baseTabOffset+=2;
            currentTokenPhrase.clear();
        }
    }

    private static void checkClassVarValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals(";")) {
            CompilationEngine.compileClassVarStatement();
            currentTokenPhrase.clear();
        }
    }

    private static void checkClassStatementValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals("{")) {
            CompilationEngine.compileClassStatement();
            baseTabOffset+=2;
            currentTokenPhrase.clear();
        }
    }

    private static void checkLetStatementValidity(int tabOffset) {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals(";")) {
            CompilationEngine.compileLetStatement(tabOffset);
            currentTokenPhrase.clear();
        } 
    }

    private static void checkIfStatementValidity(int tabOffset) {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals("{")) {
            baseTabOffset+=2;
            CompilationEngine.compileIfStatement(tabOffset);
            currentTokenPhrase.clear();
        }
    }

    private static void checkElseStatementValidity(int tabOffset) {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals("{")) {
            baseTabOffset+=2;
            CompilationEngine.compileElseStatement(tabOffset);
            currentTokenPhrase.clear();
        }
    }

    private static void checkWhileStatementValidity(int tabOffset) {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals("{")) {
            baseTabOffset+=2;
            CompilationEngine.compileWhileStatement(tabOffset);
            currentTokenPhrase.clear();
        }
    }

    // private static void printTokens(ArrayList<Token> tokens) {
    //     System.out.println("Start Tokens:");
    //     for (Token token : tokens) {
    //         if (token.type == TokenType.KEYWORD) {
    //             System.out.println("Keyword: " + token.value);
    //         } else if (token.type == TokenType.IDENTIFIER) {
    //             System.out.println("Identifier: " + token.value);
    //         } else if (token.type == TokenType.STRING_CONSTANT) {
    //             System.out.println("String Constant: " + token.value);
    //         } else if (token.type == TokenType.INT_CONSTANT) {
    //             System.out.println("Integer Constant: " + token.value);
    //         } else if (token.type == TokenType.SYMBOL) {
    //             System.out.println("Symbol: " + token.value);
    //         }
    //     }
    //     System.out.println("End Tokens:");
    // }

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
        if (args.length == 0) {
            System.err.println("Please provide a file or directory path as an argument.");
            return;
        }
        File inputFile = new File(args[0]);
        if (inputFile.isFile() && args[0].endsWith(".jack")) {
            String outputFileName = args[0].replace(".jack", ".xml");
            secondPass(inputFile, outputFileName);
        } else if (inputFile.isDirectory()) {
            File[] files = inputFile.listFiles((dir, name) -> name.endsWith(".jack"));
            if (files == null || files.length == 0) {
                System.err.println("No .jack files found in the directory.");
                return;
            }
            for (File file : files) {
                String outputFileName = file.getAbsolutePath().replace(".jack", ".xml");
                secondPass(file, outputFileName);
                baseTabOffset = 0;
                currentTokenPhrase.clear();
                isFirstStatment = true;
                statementContextsStack.clear();
                processingComment = false;
            }
        }
    }
}