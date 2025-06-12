import java.util.ArrayList;
import java.util.HashMap;

public class CompilationEngine {

    public static void addNewLine(String str) {
        Vars.compilerCodeBuilder.append("\n" + str);
    }

    public static void compileOperator(Token op, boolean isUnary) {
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

    public static void compileSubroutineAndArray(
        int startIndex, 
        ArrayList<Token> subExp, 
        ArrayList<Token> expTokens, 
        String divider, 
        Token op
    ) {
        subExp = Utils.getSubExpression(startIndex, divider, expTokens,0);
        compileTerm(subExp);
        if (op != null) {
            compileOperator(op, false);
            compileExpression(new ArrayList<>(expTokens.subList(subExp.size()+1, expTokens.size())));
        } else {
            compileExpression(new ArrayList<>(expTokens.subList(subExp.size(), expTokens.size())));
        }
    }

    public static void compileKeywordTerm(Token token) {
        if (token.value.equals("true")) {
            addNewLine("push constant 1");
            addNewLine("neg");
        } else if (token.value.equals("false")) {
            addNewLine("push constant 0");
        } else if (token.value.equals("null")) {
            addNewLine("push constant 0");
        } else if (token.value.equals("this")) {
            addNewLine("push pointer 0");
        }
    }

    public static void compileStringTerm(Token token) {
        addNewLine("push constant " + token.value.length());
        addNewLine("call String.new 1");
        for (int i = 0; i < token.value.length(); i++) {
            addNewLine("push constant " + (int) token.value.charAt(i));
            addNewLine("call String.appendChar 2");
        }
    }

    public static void compileIdentifierTerm(Token token) {
        Variable var = Variable.getVar(token.value);
        if (var.kind.equals("field")) {
            addNewLine("push this " + var.num);
        } else {
            addNewLine("push " + var.kind + " " + var.num);
        }
    }

    public static void compileClassSubroutineTerm(ArrayList<Token> termTokens) {
        ArrayList<Token> subExpression;
        int argCount = 0;
        subExpression = 
        Utils.getSubExpression(4, ")", termTokens, 1);
        Variable var = Variable.getVar(termTokens.get(0).value);
        if (var != null) {
            // If var not null then it is a method call and we need to add 'this' pointer
            subExpression.add(0, termTokens.get(0));
            subExpression.add(1, new Token(Token.TokenType.SYMBOL, ","));
            argCount = processExpressionList(subExpression, 0);
            addNewLine("call " + var.type + "." + termTokens.get(2).value + " " + argCount);
        } else {
            argCount = processExpressionList(subExpression, 0);
            addNewLine("call " + termTokens.get(0).value + "." + termTokens.get(2).value + " " + argCount);
        }
    }

    public static void compileMethodTerm(ArrayList<Token> termTokens) {
        ArrayList<Token> subExpression;
        int argCount = 0;
        subExpression = Utils.getSubExpression(2, ")", termTokens, 1);
        addNewLine("push pointer 0");
        argCount = processExpressionList(subExpression,0);
        addNewLine("call " + Vars.currentClassName + "." + termTokens.get(0).value + " " + (argCount+1));
    }

    public static void compileArrayTerm(ArrayList<Token> termTokens) {
        ArrayList<Token> subExpression;
        Variable var = Variable.getVar(termTokens.get(0).value);
        if (var.kind.equals("field")) {
            addNewLine("push this " + var.num);
        } else {
            addNewLine("push " + var.kind + " " + var.num);
        }
        subExpression = Utils.getSubExpression(2, "]", termTokens, 1);
        compileExpression(subExpression);
        addNewLine("add");
        addNewLine("pop pointer 1");
        addNewLine("push that 0");
    }

    public static int processExpressionList(ArrayList<Token> expressionList, int argCount) {
        if (expressionList.size() > 0) {
            ArrayList<Token> subExpression =
            Utils.getSubExpression(0, ",", expressionList,0);
            compileExpression(subExpression);
            Vars.prevTerm = null;
            if (subExpression.size()+1 < expressionList.size()) {
                expressionList.subList(0, subExpression.size()+1).clear();
                return processExpressionList(expressionList, argCount+1);
            } else {
                return argCount+1;
            }
        } else {
            return argCount;
        }
    }

    public static void compileLetStatement() {
        ArrayList<Token> subExpression;        
        if (Vars.currentTokenPhrase.get(2).value.equals("[")) {
            Variable arrVar = Variable.getVar(Vars.currentTokenPhrase.get(1).value);
            subExpression = 
            Utils.getSubExpression(3, "]", Vars.currentTokenPhrase,1);
            compileExpression(subExpression);
            Vars.prevTerm = null;
            if (arrVar.kind.equals("field")) {
                addNewLine("push this " + arrVar.num);
            } else {
                addNewLine("push " + arrVar.kind + " " + arrVar.num);
            }
            addNewLine("add");
            subExpression = 
            Utils.getSubExpression(5 + subExpression.size(), ";", Vars.currentTokenPhrase,0);
            compileExpression(subExpression);
            Vars.prevTerm = null;
            addNewLine("pop temp 0");
            addNewLine("pop pointer 1");
            addNewLine("push temp 0");
            addNewLine("pop that 0");
        } else {
            subExpression = 
            Utils.getSubExpression(3, ";", Vars.currentTokenPhrase,0);
            compileExpression(subExpression);
            Vars.prevTerm = null;
            Variable var = Variable.getVar(Vars.currentTokenPhrase.get(1).value);
            addNewLine("pop " + (var.kind.equals("field") ? "this" : var.kind) + " " + var.num);
        }
    }

    public static void compileIfStatement() {
        Vars.statementContextsStack.push(Vars.currentClassName + "_IF_" + Vars.ifCounter);
        ArrayList<Token> subExpression = 
        Utils.getSubExpression(2, ")",Vars.currentTokenPhrase,1);
        compileExpression(subExpression);
        Vars.prevTerm = null;
        addNewLine("not");
        addNewLine("if-goto " + Vars.currentClassName + "_IF_" + Vars.ifCounter);
        Vars.ifCounter++;
    }

    public static void compileWhileStatement() {
        Vars.statementContextsStack.push(Vars.currentClassName + "_WHILE_" + Vars.whileCounter);
        addNewLine("label " + Vars.currentClassName + "_WHILE_" + Vars.whileCounter);
        ArrayList<Token> subExpression = 
        Utils.getSubExpression(2, ")", Vars.currentTokenPhrase,1);
        compileExpression(subExpression);
        Vars.prevTerm = null;
        addNewLine("not");
        addNewLine("if-goto " + Vars.currentClassName + "_WHILE_" + Vars.whileCounter + "_END");
        Vars.whileCounter++;
    }

    public static void compileClassStatement() {
        Vars.currentClassName = Vars.currentTokenPhrase.get(1).value;
        Vars.statementContextsStack.push("class");
    }

    public static void compileClassVarStatement() {
        processClassVarList(
            Utils.getSubExpression(2, ";", Vars.currentTokenPhrase,0), 
            Vars.currentTokenPhrase.get(0).value,
            Vars.currentTokenPhrase.get(1).value
        );
    }

    public static String replaceEnd(String str, String oldEnd, String newEnd) {
        if (str.endsWith(oldEnd)) {
            return str.substring(0, str.length() - oldEnd.length()) + newEnd;
        }
        return str; // Return the original string if the oldEnd is not found
    }

    public static void processClassVarList(ArrayList<Token> classVarList, String kind, String type) {
        HashMap<String,Variable> symbolTabel = kind.equals("local") 
        ? Vars.subroutineSymbolTable 
        : Vars.classSymbolTable;

        if (classVarList.size() > 0) {
            int currentCounter = 0;
            if (kind.equals("field")) {
                currentCounter = Vars.fieldCounter;
                Vars.fieldCounter++;
            } else if (kind.equals("static")) {
                currentCounter = Vars.staticCounter;
                Vars.staticCounter++;
            } else if (kind.equals("local")) {
                currentCounter = Vars.localCounter;
                Vars.localCounter++;
                int subroutineIndex = Vars.compilerCodeBuilder.indexOf(Vars.subroutineName);
                int subroutineEndIndex = subroutineIndex + Vars.subroutineName.length();
                Vars.subroutineName = 
                replaceEnd(Vars.subroutineName, String.valueOf(Vars.localCounter-1), String.valueOf(Vars.localCounter));
               
                Vars.compilerCodeBuilder.replace(subroutineIndex, subroutineEndIndex,Vars.subroutineName);
            }
            ArrayList<Token> currentSubList = 
            Utils.getSubExpression(0, ",", classVarList,0);
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

    public static void compileVarStatement() {
        processClassVarList(
            Utils.getSubExpression(2, ";", Vars.currentTokenPhrase, 0),
            "local",
            Vars.currentTokenPhrase.get(1).value
        );
    }

    public static void processArguments(ArrayList<Token> arguments, boolean setThis) {
        if (setThis) {
            Vars.subroutineSymbolTable.put("this", new Variable(
                Vars.currentClassName, 
                "argument", 
                0
            ));
            Vars.argumentCounter++;
        }
        if (arguments.size() > 0) {
            ArrayList<Token> currentArgument = 
            Utils.getSubExpression(0, ",", arguments,0);
            Vars.subroutineSymbolTable.put(currentArgument.get(1).value, new Variable(
                currentArgument.get(0).value, 
                "argument", 
                Vars.argumentCounter
            ));
            Vars.argumentCounter++;
            if (currentArgument.size()+1 < arguments.size()) {
                arguments.subList(0, currentArgument.size()+1).clear();
                processArguments(arguments, false);
            }
        }
    }

    public static void compileSubroutineStatement() {
        Vars.statementContextsStack.push(Vars.currentTokenPhrase.get(0).value);
        ArrayList<Token> subExpression;
        if (
            Vars.currentTokenPhrase.get(4).type == Token.TokenType.SYMBOL && 
            Vars.currentTokenPhrase.get(4).value.equals(")")
        ) {
            subExpression = new ArrayList<Token>();
        } else {
            subExpression = 
            Utils.getSubExpression(4, ")", Vars.currentTokenPhrase,1);
        }
        if (Vars.currentTokenPhrase.get(0).value.equals("method")) {
            processArguments(subExpression, true);
        } else {
            processArguments(subExpression, false);
        }
        Vars.subroutineName = "function " + 
        Vars.currentClassName + "." + Vars.currentTokenPhrase.get(2).value + " " + 0;
        addNewLine(Vars.subroutineName);
        if (Vars.currentTokenPhrase.get(0).value.equals("constructor")) {
            addNewLine("push constant " + Vars.fieldCounter);
            addNewLine("call Memory.alloc 1");
            addNewLine("pop pointer 0");
        } else if (Vars.currentTokenPhrase.get(0).value.equals("method")) {
            // Assigning 'this' from the first argument
            addNewLine("push argument 0");
            addNewLine("pop pointer 0");
        }
    }

    public static void compileDoStatement() {
        compileTerm(new ArrayList<>(Vars.currentTokenPhrase.subList(1, Vars.currentTokenPhrase.size())));
        addNewLine("pop temp 0");
        Vars.prevTerm = null;
    }

    public static void compileReturnStatement() {
        ArrayList<Token> subExpression = 
        Utils.getSubExpression(1, ";", Vars.currentTokenPhrase, 0);
        if (subExpression.size() == 0) {
            addNewLine("push constant 0");
        } else if (subExpression.size() == 1 && subExpression.get(0).value.equals("this")) {
            addNewLine("push pointer 0");
        } else {
            compileExpression(subExpression);
            Vars.prevTerm = null;
        }
        addNewLine("return");
    }

    public static void closeStatement(String currentStatement) {
        if (currentStatement.equals("if")) {
            addNewLine("label " + Vars.currentContext);
        } else if (currentStatement.equals("if else")) {
            Vars.statementContextsStack.push(Vars.currentClassName + "_ELSE_" + Vars.elseCounter);
            addNewLine("goto " + Vars.currentClassName + "_ELSE_" + Vars.elseCounter);
            addNewLine("label " + Vars.currentContext);
            Vars.elseCounter++;
        } else if (currentStatement.startsWith(Vars.currentClassName + "_ELSE_")) {
            addNewLine("label " + currentStatement);
        } else if (currentStatement.startsWith(Vars.currentClassName + "_WHILE_")) {
            addNewLine("goto " + currentStatement);
            addNewLine("label " + currentStatement + "_END");
        } else if (currentStatement.equals("class")) {
        } else if (
            currentStatement.equals("constructor")  || 
            currentStatement.equals("function")     || 
            currentStatement.equals("method")
        ) {
            Vars.argumentCounter = 0;
            Vars.localCounter = 0;
            Vars.subroutineName = "";
            Vars.subroutineSymbolTable.clear();
        }
    }

    public static void compileTerm(ArrayList<Token> termTokens) {
        ArrayList<Token> subExpression;
        if (termTokens.size() == 1) {
            if (termTokens.get(0).type == Token.TokenType.IDENTIFIER) {
                compileIdentifierTerm(termTokens.get(0));
            } else if (termTokens.get(0).type == Token.TokenType.INT_CONSTANT) {
                addNewLine("push constant " + termTokens.get(0).value);
            } else if (termTokens.get(0).type == Token.TokenType.KEYWORD) {
                compileKeywordTerm(termTokens.get(0));
            } else if (termTokens.get(0).type == Token.TokenType.STRING_CONSTANT) {
                compileStringTerm(termTokens.get(0));
            }
        } else if (termTokens.size() > 1) {

            // Class.callFunc(1,2)
            if (
                termTokens.get(0).type == Token.TokenType.IDENTIFIER && 
                termTokens.get(1).value.equals(".")
            ) {
                compileClassSubroutineTerm(termTokens);
            } 

            // callFunc(1,2)
            else if (
                termTokens.get(0).type == Token.TokenType.IDENTIFIER && 
                termTokens.get(1).value.equals("(")
            ) {
                compileMethodTerm(termTokens);
            }

            // arr[1] 
            else if (
                termTokens.get(0).type == Token.TokenType.IDENTIFIER && 
                termTokens.get(1).value.equals("[")
            ) {

                compileArrayTerm(termTokens);
            }

            // -term 
            else if (
                termTokens.get(0).value.equals("-") || 
                termTokens.get(0).value.equals("~")
            ) {

                compileTerm(new ArrayList<>(termTokens.subList(1, termTokens.size())));
                compileOperator(termTokens.get(0), true);
            }

            // (5+5) 
            else if (termTokens.get(0).value.equals("(")) {
                subExpression = 
                Utils.getSubExpression(1, ")", termTokens, 1);
                compileExpression(subExpression);
            }
        }
        Vars.prevTerm = "term";
    }

    public static void compileExpression(ArrayList<Token> expTokens) {

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
            else if (
                expTokens.get(0).type == Token.TokenType.IDENTIFIER && 
                expTokens.get(1).value.equals(".")
            ) {
                compileSubroutineAndArray(0, subExp, expTokens, ")", null);
            } 

            // Handling subroutine method calls: let x = callFunc(55) ...
            else if (
                expTokens.get(0).type == Token.TokenType.IDENTIFIER && 
                expTokens.get(1).value.equals("(")
            ) {
                compileSubroutineAndArray(0, subExp, expTokens, ")", null);
            }

            // Handling array access: let x = arr[5] ...
            else if (
                expTokens.get(0).type == Token.TokenType.IDENTIFIER && 
                expTokens.get(1).value.equals("[")
            ) {
                compileSubroutineAndArray(0, subExp, expTokens, "]", null);
            }

            else if (Utils.mathSymbols.contains(expTokens.get(0).value)) {

                // let x = -99+88...
                if (
                    (Vars.prevTerm == null || Vars.prevTerm.equals("operator")) && 
                    (expTokens.get(0).value.equals("-")) || 
                    (expTokens.get(0).value.equals("~"))
                    
                ) {
                    subExp = Utils.getSubExpression(0,"unary",expTokens,0);
                    compileTerm(subExp);
                    if (expTokens.size() > subExp.size()) {
                        subExp = new ArrayList<>(expTokens.subList(subExp.size(), expTokens.size()));
                        compileExpression(subExp);
                    }
                } else {
                    //  ... + (x - 7) ... (handling parentheses)
                    if (expTokens.get(1).value.equals("(")) {
                        Vars.prevTerm = "operator";
                        compileSubroutineAndArray(1,subExp, expTokens, ")", expTokens.get(0));
                    } 
                    
                    // ... + Class.callFunc() ... (handling subroutine calls / methods / arrays)
                    else if (
                        expTokens.get(1).type == Token.TokenType.IDENTIFIER && 
                        expTokens.size() > 2 && 
                        ".([".contains(expTokens.get(2).value)
                    ) {
                        String divider = expTokens.get(2).value.equals("[") ? "]" : ")";
                        compileSubroutineAndArray(1,subExp, expTokens, divider, expTokens.get(0));
                    }

                    // ... + -99 ... (handling unary operators)
                    else if (
                        expTokens.get(1).value.equals("-") || 
                        expTokens.get(1).value.equals("~")
                    ) {
                        compileSubroutineAndArray(1,subExp, expTokens, "unary", expTokens.get(0));
                    } 

                    // ... + x ... 
                    else {
                        subExp = new ArrayList<>();
                        subExp.add(expTokens.get(1));
                        Vars.prevTerm = "operator";
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
    
}
