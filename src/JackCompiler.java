import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Stack;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.io.File;

public class JackCompiler {

    private static BufferedWriter writer;

    private static String currentClassName = "";
    private static int ifCounter = 0;
    private static int elseCounter = 0;
    private static int whileCounter = 0;

    // Token logic
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
    // Token logic

    // Symbol table logic
    private static int fieldCounter = 0;
    private static int staticCounter = 0;
    private static int argumentCounter = 0;
    private static int localCounter = 0;

    private static class Variable {
        String type;
        String kind;
        int num;
        Variable(String type, String kind, int num) {
            this.type = type;
            this.kind = kind;
            this.num = num;
        }
    }

    private static HashMap<String,Variable> classSymbolTable = new HashMap<>();
    private static HashMap<String,Variable> subroutineSymbolTable = new HashMap<>();
    // Symbol table logic

    private static Stack<String> statementContextsStack = new Stack<>(); // class, constructor, function, method, if, while

    private static String prevTerm;

    private static class CompilationEngine {

        private static void addNewLine(String str) {
            compilerCodeBuilder.append("\n" + str);
        }

        private static int argCount = 0;

        private static void processExpressionList(ArrayList<Token> expressionList) {
            if (expressionList.size() > 0) {
                ArrayList<Token> subExpression = getSubExpression(0, ",", expressionList,1);
                compileExpression(subExpression);
                argCount++;
                prevTerm = null;
                if (subExpression.size()+1 < expressionList.size()) {
                    expressionList.subList(0, subExpression.size()+1).clear();
                    processExpressionList(expressionList);
                }
            }
        } 

        private static Variable getVar(String name) {
            Variable var = subroutineSymbolTable.get(name) != null 
            ? subroutineSymbolTable.get(name)
            : classSymbolTable.get(name);
            return var;
        }

        private static void compileTerm(ArrayList<Token> termTokens) {
            ArrayList<Token> subExpression;
            if (termTokens.size() == 1) {
                if (termTokens.get(0).type == TokenType.IDENTIFIER) {
                    Variable var = getVar(termTokens.get(0).value);
                    if (var.kind.equals("field")) {
                        addNewLine("push this " + var.num);
                    } else {
                        addNewLine("push " + var.kind + " " + var.num);
                    }
                } else if (termTokens.get(0).type == TokenType.INT_CONSTANT) {
                    addNewLine("push constant " + termTokens.get(0).value);
                } else if (termTokens.get(0).type == TokenType.KEYWORD) {
                    if (termTokens.get(0).value.equals("true")) {
                        addNewLine("push constant 1");
                        addNewLine("neg");
                    } else if (termTokens.get(0).value.equals("false")) {
                        addNewLine("push constant 0");
                    } else if (termTokens.get(0).value.equals("null")) {
                        addNewLine("push constant 0");
                    }
                } else if (termTokens.get(0).type == TokenType.STRING_CONSTANT) {
                    addNewLine("push constant " + termTokens.get(0).value.length());
                    addNewLine("call String.new 1");
                    for (int i = 0; i < termTokens.get(0).value.length(); i++) {
                        addNewLine("push constant " + (int) termTokens.get(0).value.charAt(i));
                        addNewLine("call String.appendChar 2");
                    }
                }
            } else if (termTokens.size() > 1) {
                if (termTokens.get(0).type == TokenType.IDENTIFIER && termTokens.get(1).value.equals(".")) {
                    subExpression = getSubExpression(4, ")", termTokens, 1);
                    Variable var = getVar(termTokens.get(0).value);
                    if (var != null) {
                        subExpression.add(0, termTokens.get(0));
                        subExpression.add(1, new Token(TokenType.SYMBOL, ","));
                        processExpressionList(subExpression);
                        addNewLine("call " + var.type + "." + termTokens.get(2).value + " " + argCount);
                    } else {
                        processExpressionList(subExpression);
                        addNewLine("call " + termTokens.get(0).value + "." + termTokens.get(2).value + " " + argCount);
                    }
                    argCount = 0;
                } else if (termTokens.get(0).type == TokenType.IDENTIFIER && termTokens.get(1).value.equals("(")) {
                    subExpression = getSubExpression(2, ")", termTokens, 1);
                    addNewLine("push pointer 0");
                    argCount = 1;
                    processExpressionList(subExpression);
                    addNewLine("call " + currentClassName + "." + termTokens.get(0).value + " " + argCount);
                    argCount = 0;
                } else if (termTokens.get(0).type == TokenType.IDENTIFIER && termTokens.get(1).value.equals("[")) {
                    Variable var = getVar(termTokens.get(0).value);
                    addNewLine("push " + var.kind + " " + var.num);
                    subExpression = getSubExpression(2, "]", termTokens, 1);
                    compileExpression(subExpression);
                    addNewLine("add");
                    addNewLine("pop pointer 1");
                    addNewLine("push that 0");
                } else if (termTokens.get(0).value.equals("-") || termTokens.get(0).value.equals("~")) {
                    compileTerm(new ArrayList<>(termTokens.subList(1, termTokens.size())));
                    compileOperator(termTokens.get(0), true);
                } else if (termTokens.get(0).value.equals("(")) {
                    subExpression = getSubExpression(1, ")", termTokens, 1);
                    compileExpression(subExpression);
                }
            }
            prevTerm = "term";
        }

        private static void compileSubroutineAndArray(int startIndex, ArrayList<Token> subExp, ArrayList<Token> expTokens, String divider, Token op) {
            subExp = getSubExpression(startIndex, divider, expTokens,0);
            subExp.add(new Token(TokenType.SYMBOL, divider));
            compileTerm(subExp);
            if (op != null) {
                compileOperator(op, false);
                compileExpression(new ArrayList<>(expTokens.subList(subExp.size()+1, expTokens.size())));
            } else {
                compileExpression(new ArrayList<>(expTokens.subList(subExp.size(), expTokens.size())));
            }
        }

        private static void compileExpression(ArrayList<Token> expTokens) {

            ArrayList<Token> subExp = new ArrayList<>();

            // let x = 5;
            if (expTokens.size() == 1) {

                compileTerm(expTokens);

            } else if (expTokens.size() > 1) {

                // Handling parentheses: let x = (x + 5) ...
                if (expTokens.get(0).value.equals("(")) {
                    compileSubroutineAndArray(0, subExp, expTokens, ")", null);
                } 

                // Handling subroutine calls: let x = class.callFunc(55) ...
                else if (expTokens.get(0).type == TokenType.IDENTIFIER && expTokens.get(1).value.equals(".")) {
                    compileSubroutineAndArray(0, subExp, expTokens, ")", null);
                } 

                // Handling subroutine method calls: let x = callFunc(55) ...
                else if (expTokens.get(0).type == TokenType.IDENTIFIER && expTokens.get(1).value.equals("(")) {
                    compileSubroutineAndArray(0, subExp, expTokens, ")", null);
                }

                // Handling array access: let x = arr[5] ...
                else if (expTokens.get(0).type == TokenType.IDENTIFIER && expTokens.get(1).value.equals("[")) {
                    compileSubroutineAndArray(0, subExp, expTokens, "]", null);
                }

                else if (mathSymbols.contains(expTokens.get(0).value)) {

                    // let x = -99+88...
                    if (prevTerm == null || prevTerm.equals("operator")) { 
                        subExp = getSubExpression(0,"unary",expTokens,1);
                        compileTerm(subExp);
                        if (expTokens.size() > subExp.size()) {
                            subExp = new ArrayList<>(expTokens.subList(subExp.size(), expTokens.size()));
                            compileExpression(subExp);
                        }
                    } else {
                        
                        prevTerm = "operator";

                        //  ... + (x - 7) ... (handling parentheses)
                        if (expTokens.get(1).value.equals("(")) {
                            compileSubroutineAndArray(1,subExp, expTokens, ")", expTokens.get(0));
                        } 
                        
                        // ... + Class.callFunc() ... (handling subroutine calls / methods / arrays)
                        else if (expTokens.get(1).type == TokenType.IDENTIFIER && expTokens.size() > 2) {
                            if (".([".contains(expTokens.get(2).value)) {
                                String divider = expTokens.get(2).value.equals("[") ? "]" : ")";
                                compileSubroutineAndArray(1,subExp, expTokens, divider, expTokens.get(0));
                            }
                        }

                        // ... + -99 ... (handling unary operators)
                        else if (expTokens.get(1).value.equals("-") || expTokens.get(1).value.equals("~")) {
                            compileSubroutineAndArray(1,subExp, expTokens, "unary", expTokens.get(0));
                        } 

                        // ... + x ... 
                        else {
                            subExp = new ArrayList<>();
                            subExp.add(expTokens.get(1));
                            compileTerm(subExp);
                            compileOperator(expTokens.get(0), false);
                            compileExpression(new ArrayList<>(expTokens.subList(2, expTokens.size())));
                        }
                    }
                } 
                // let x = b ...
                else {
                    compileTerm(new ArrayList<>(expTokens.subList(0, 1)));
                    compileExpression(new ArrayList<>(expTokens.subList(1, expTokens.size())));
                }
            }
        }

        private static void compileOperator(Token op, boolean isUnary) {
            if (op.value.equals("+")) {
                addNewLine("add");
            } else if (op.value.equals("-") && isUnary) {
                addNewLine("neg");
            } else if (op.value.equals("-") && !isUnary) {
                addNewLine("sub");
            } else if (op.value.equals("=")) {
                addNewLine("eq");
            } else if (op.value.equals("/")) {
                addNewLine("call Math.divide 2");
            } else if (op.value.equals("*")) {
                addNewLine("call Math.multiply 2");
            } else if (op.value.equals("~")) {
                addNewLine("not");
            } else if (op.value.equals("<")) {
                addNewLine("lt");
            } else if (op.value.equals(">")) {
                addNewLine("gt");
            } else if (op.value.equals("|")) {
                addNewLine("or");
            } else if (op.value.equals("&")) {
                addNewLine("and");
            }
        }

        private static void compileLetStatement() {
            ArrayList<Token> subExpression;        
            if (currentTokenPhrase.get(2).value.equals("[")) {
                Variable arrVar = getVar(currentTokenPhrase.get(1).value);
                addNewLine("push " + arrVar.kind + " " + arrVar.num);
                subExpression = getSubExpression(3, "]", currentTokenPhrase,1);
                compileExpression(subExpression);
                addNewLine("add");
                subExpression = getSubExpression(5 + subExpression.size(), ";", currentTokenPhrase,0);
                compileExpression(subExpression);
                addNewLine("pop temp 0");
                addNewLine("pop pointer 1");
                addNewLine("push temp 0");
                addNewLine("pop that 0");
            } else {
                subExpression = getSubExpression(3, ";", currentTokenPhrase,0);
                compileExpression(subExpression);
                Variable var = getVar(currentTokenPhrase.get(1).value);
                addNewLine("pop " + (var.kind.equals("field") ? "this" : var.kind) + " " + var.num);
            }
        }

        private static void compileIfStatement() {
            statementContextsStack.push(currentClassName + "_IF_" + ifCounter);
            ArrayList<Token> subExpression = getSubExpression(2, ")", currentTokenPhrase,1);
            compileExpression(subExpression);
            addNewLine("not");
            addNewLine("if-goto " + currentClassName + "_IF_" + ifCounter);
            ifCounter++;
        }

        private static void compileWhileStatement() {
            statementContextsStack.push(currentClassName + "_WHILE_" + whileCounter);
            addNewLine("label " + currentClassName + "_WHILE_" + whileCounter);
            ArrayList<Token> subExpression = getSubExpression(2, ")", currentTokenPhrase,1);
            compileExpression(subExpression);
            addNewLine("not");
            addNewLine("if-goto " + currentClassName + "_WHILE_" + whileCounter + "_END");
            whileCounter++;
        }

        private static void compileClassStatement() {
            currentClassName = currentTokenPhrase.get(1).value;
            statementContextsStack.push("class");
        }

        private static void compileClassVarStatement() {
            processClassVarList(
                getSubExpression(2, ";", currentTokenPhrase,0), 
                currentTokenPhrase.get(0).value,
                currentTokenPhrase.get(1).value
            );
        }

        private static String replaceEnd(String str, String oldEnd, String newEnd) {
            if (str.endsWith(oldEnd)) {
                return str.substring(0, str.length() - oldEnd.length()) + newEnd;
            }
            return str; // Return the original string if the oldEnd is not found
        }

        private static void processClassVarList(ArrayList<Token> classVarList, String kind, String type) {
            HashMap<String,Variable> symbolTabel = kind.equals("local") ? subroutineSymbolTable : classSymbolTable;
            if (classVarList.size() > 0) {
                int currentCounter = 0;
                if (kind.equals("field")) {
                    currentCounter = fieldCounter;
                    fieldCounter++;
                } else if (kind.equals("static")) {
                    currentCounter = staticCounter;
                    staticCounter++;
                } else if (kind.equals("local")) {
                    currentCounter = localCounter;
                    localCounter++;
                    int subroutineIndex = compilerCodeBuilder.indexOf(subroutineName);
                    int subroutineEndIndex = subroutineIndex + subroutineName.length();
                    subroutineName = replaceEnd(subroutineName, String.valueOf(localCounter-1), String.valueOf(localCounter));
                    compilerCodeBuilder.replace(subroutineIndex, subroutineEndIndex, subroutineName);
                }
                ArrayList<Token> currentSubList = getSubExpression(0, ",", classVarList,1);
                symbolTabel.put(currentSubList.get(0).value, new Variable(
                    type, 
                    kind, 
                    currentCounter
                ));
                if (currentSubList.size()+1 < classVarList.size()) {
                    classVarList.subList(0, currentSubList.size()+1).clear();
                    processClassVarList(classVarList, kind, type);
                }
            }
        }

        private static void processArguments(ArrayList<Token> arguments, boolean setThis) {
            if (setThis) {
                subroutineSymbolTable.put("this", new Variable(
                    currentClassName, 
                    "argument", 
                    0
                ));
                argumentCounter++;
            }
            if (arguments.size() > 0) {
                ArrayList<Token> currentArgument = getSubExpression(0, ",", arguments,1);
                subroutineSymbolTable.put(currentArgument.get(1).value, new Variable(
                    currentArgument.get(0).value, 
                    "argument", 
                    argumentCounter
                ));
                argumentCounter++;
                if (currentArgument.size()+1 < arguments.size()) {
                    arguments.subList(0, currentArgument.size()+1).clear();
                    processArguments(arguments, false);
                }
            }
        }

        private static void compileVarStatement() {
            processClassVarList(
                getSubExpression(2, ";", currentTokenPhrase, 1),
                "local",
                currentTokenPhrase.get(1).value
            );
        }

        private static String subroutineName = "";

        private static void compileSubroutineStatement() {
            statementContextsStack.push(currentTokenPhrase.get(0).value);
            ArrayList<Token> subExpression;
            if (currentTokenPhrase.get(4).type == TokenType.SYMBOL && currentTokenPhrase.get(4).value.equals(")")) {
                subExpression = new ArrayList<Token>();
            } else {
                subExpression = getSubExpression(4, ")", currentTokenPhrase,1);
            }
            if (currentTokenPhrase.get(0).value.equals("method")) {
                processArguments(subExpression, true);
            } else {
                processArguments(subExpression, false);
            }
            subroutineName = "function " + currentClassName + "." + currentTokenPhrase.get(2).value + " " + 0;
            addNewLine(subroutineName);
            if (currentTokenPhrase.get(0).value.equals("constructor")) {
                addNewLine("push constant " + fieldCounter);
                addNewLine("call Memory.alloc 1");
                addNewLine("pop pointer 0");
            } else if (currentTokenPhrase.get(0).value.equals("method")) {
                // Assigning 'this' from the first argument
                addNewLine("push argument 0");
                addNewLine("pop pointer 0");
            }
        }

        private static void compileDoStatement() {
            compileTerm(new ArrayList<>(currentTokenPhrase.subList(1, currentTokenPhrase.size())));
            addNewLine("pop temp 0");
        }

        private static void compileReturnStatement() {
            ArrayList<Token> subExpression = getSubExpression(1, ";", currentTokenPhrase, 1);
            if (subExpression.size() == 0) {
                addNewLine("push constant 0");
            } else if (subExpression.size() == 1 && subExpression.get(0).value.equals("this")) {
                addNewLine("push pointer 0");
            } else {
                compileExpression(subExpression);
            }
            CompilationEngine.addNewLine("return");
        }

        private static void closeStatement(String currentStatement) {
            if (currentStatement.equals("if")) {
                CompilationEngine.addNewLine("label " + currentContext);
            } else if (currentStatement.equals("if else")) {
                statementContextsStack.push(currentClassName + "_ELSE_" + elseCounter);
                CompilationEngine.addNewLine("goto " + currentClassName + "_ELSE_" + elseCounter);
                CompilationEngine.addNewLine("label " + currentContext);
                elseCounter++;
            } else if (currentStatement.startsWith(currentClassName + "_ELSE_")) {
                CompilationEngine.addNewLine("label " + currentStatement);
            } else if (currentStatement.startsWith(currentClassName + "_WHILE_")) {
                CompilationEngine.addNewLine("goto " + currentStatement);
                CompilationEngine.addNewLine("label " + currentStatement + "_END");
            } else if (currentStatement.equals("class")) {
                System.out.println("Class " + currentClassName + " compiled successfully.");
            } else if (currentStatement.equals("constructor") || currentStatement.equals("function") || currentStatement.equals("method")) {
                System.out.println("Subroutine " + currentStatement + " compiled successfully.");
                argumentCounter = 0;
                localCounter = 0;
                subroutineName = "";
                subroutineSymbolTable.clear();
            }
        }
    }

    private static final List<String> symbols = Arrays.asList(
        "{", "}", "(", ")", "[", "]", ".", ",", ";", "+", "-", "*", "/", "&", "|", "<", ">", "=", "~"
    );

    private static final List<String> mathSymbols = Arrays.asList(
        "+", "-", "*", "/", "&", "|", "<", ">", "=", "~"
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

    private static ArrayList<Token> getSubExpression(
        int startIndex, 
        String divider, 
        ArrayList<Token> inputTokenPhrase,
        int openParenthesesCount
    ) {
        ArrayList<Token> subPhrase = new ArrayList<>();
        String currentSubroutineOpen = divider.contains(")") ? "(" : divider.contains("]") ? "[" : null;
        for (int i = startIndex; i < inputTokenPhrase.size(); i++) {
            Token token = inputTokenPhrase.get(i);
            if (!divider.contains("unary")) {
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
            } else {
                subPhrase.add(token);
                if (i+1 == inputTokenPhrase.size()) {
                    break;
                } else if (
                    token.type != TokenType.SYMBOL && 
                    !inputTokenPhrase.get(i+1).value.equals(".") && 
                    !inputTokenPhrase.get(i+1).value.equals("[") && 
                    !inputTokenPhrase.get(i+1).value.equals("(") && 
                    !inputTokenPhrase.get(i+1).value.equals(")") && 
                    !inputTokenPhrase.get(i+1).value.equals("]") && 
                    openParenthesesCount == 1) {
                    break;
                } else if (token.value.equals("(") || token.value.equals("[")) {
                    openParenthesesCount++;
                    
                } else if (token.value.equals(")") || token.value.equals("]")) {
                    openParenthesesCount--;
                    if (openParenthesesCount == 1) {
                        break;
                    }
                }
                if (openParenthesesCount == 0) {
                    break;
                }
            }
        }
        return subPhrase;
    }

    private static Boolean waitingForNextToken = false;
    private static String currentContext = "";
    
    private static void checkCurrentTokenPhraseValidity() {
        Token startToken = currentTokenPhrase.get(0);
        if (waitingForNextToken == true) {
            if (startToken.value.equals("else")) {
                CompilationEngine.closeStatement("if else");
            } else {
                CompilationEngine.closeStatement("if");
            }
            waitingForNextToken = false;
        }
        if (startToken.type == TokenType.KEYWORD) {
            if (startToken.value.equals("let")) {
                checkLetStatementValidity();
            } else if (startToken.value.equals("if")) {
                checkIfStatementValidity();
            } else if (startToken.value.equals("else")) {
                checkElseStatementValidity();
            } else if (startToken.value.equals("while")) {
                checkWhileStatementValidity();
            } else if (startToken.value.equals("class")) {
                checkClassStatementValidity();
            } else if (startToken.value.equals("static") || startToken.value.equals("field")) {
                checkClassVarValidity();
            } else if (startToken.value.equals("constructor")   || 
                startToken.value.equals("function")             || 
                startToken.value.equals("method")
            ) {
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
                currentContext = statementContextsStack.pop();
                if (currentContext.startsWith(currentClassName + "_IF_")) {
                    // cannot close 'if' right now, need to wait for the next token, if it is 'else' or other token
                    waitingForNextToken = true;
                } else {
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
            CompilationEngine.compileVarStatement();
            currentTokenPhrase.clear();
        }
    }

    private static void checkSubroutineStatementValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals("{")) {
            CompilationEngine.compileSubroutineStatement();
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
            currentTokenPhrase.clear();
        }
    }

    private static void checkLetStatementValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals(";")) {
            CompilationEngine.compileLetStatement();
            currentTokenPhrase.clear();
        } 
    }

    private static void checkIfStatementValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals("{")) {
            CompilationEngine.compileIfStatement();
            currentTokenPhrase.clear();
        }
    }

    private static void checkElseStatementValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals("{")) {
            currentTokenPhrase.clear();
        }
    }

    private static void checkWhileStatementValidity() {
        if (currentTokenPhrase.get(currentTokenPhrase.size() - 1).value.equals("{")) {
            CompilationEngine.compileWhileStatement();
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

    private static StringBuilder compilerCodeBuilder;

    private static void secondPass(File inputFile, String outputFileName) throws IOException {
        compilerCodeBuilder = new StringBuilder();
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

                writer.write(compilerCodeBuilder.toString());

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
            String outputFileName = args[0].replace(".jack", ".vm");
            secondPass(inputFile, outputFileName);
        } else if (inputFile.isDirectory()) {
            File[] files = inputFile.listFiles((dir, name) -> name.endsWith(".jack"));
            if (files == null || files.length == 0) {
                System.err.println("No .jack files found in the directory.");
                return;
            }
            for (File file : files) {
                String outputFileName = file.getAbsolutePath().replace(".jack", ".vm");
                secondPass(file, outputFileName);
                currentTokenPhrase.clear();
                statementContextsStack.clear();
                classSymbolTable.clear();
                processingComment = false;
                prevTerm = null;
            }
        }
    }
}