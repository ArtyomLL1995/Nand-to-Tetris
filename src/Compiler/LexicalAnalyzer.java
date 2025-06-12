import java.util.ArrayList;

public class LexicalAnalyzer {

    private static Token prevOp = null;

    private static Boolean isValid = true;

    private static String message = "";

    public static void checkReturnStatementValidity() {
        ArrayList<Token> t = Vars.currentTokenPhrase;
        if (t.get(t.size() - 1).value.equals(";")) {
            checkExpressionValidity(
                Utils.getSubExpression(
                    1, 
                    ";", 
                    t, 
                    0
                )
            );
            verifyValidity(Utils.VerificationTypes.RETURN);
        }
    }

    public static void checkLetStatementValidity() {
        Token op;
        ArrayList<Token> subExp;
        ArrayList<Token> t = Vars.currentTokenPhrase;
        if (t.get(t.size() - 1).value.equals(";")) {
            if (t.size() < 5) {
                setErrorMsg("Check let statement.");
            } else {
                checkIdentifier(t.get(1));
                // let arr[55] = 999;
                if (t.get(2).value.equals("[")) {
                    subExp = Utils.getSubExpression(3, "]", t, 1);
                    op = t.get(subExp.size() + 4);
                    if (!op.value.equals("=")) {
                        setErrorMsg("Expecting = instead got " + op.value);
                    } else {
                        checkExpressionValidity(subExp);
                    }
                    if (isValid) {
                        subExp = Utils.getSubExpression(subExp.size() + 5, ";", t, 0);
                        checkExpressionValidity(subExp);
                    }   
                } 
                // let x = 99;
                else {
                    if (!t.get(2).value.equals("=")) {
                        setErrorMsg("Expecting = instead got " + t.get(2).value);
                    } else {
                        subExp = Utils.getSubExpression(3, ";", t, 0);
                        checkExpressionValidity(subExp);
                    }
                }
            }
            verifyValidity(Utils.VerificationTypes.LET);
        }
    }

    public static void checkIf_While_StatementValidity(Utils.VerificationTypes type) {
        ArrayList<Token> subExp;
        ArrayList<Token> t = Vars.currentTokenPhrase;
        if (t.get(t.size() - 1).value.equals("{")) {
            if (t.size() < 5) {
                setErrorMsg("Check statement.");
            } else {
                if (!t.get(1).value.equals("(")) {
                    setErrorMsg("Expecting ( but got " + t.get(1).value);
                } else if (!t.get(t.size() - 2).value.equals(")")) {
                    setErrorMsg("Expecting ) but got " + t.get(t.size() - 2).value);
                } 
                if (isValid) {
                    subExp = Utils.getSubExpression(2, ")", t, 1);
                    checkExpressionValidity(subExp);
                }
            }
            verifyValidity(type);
        }
    }

    public static void checkElseStatementValidity() {
        ArrayList<Token> t = Vars.currentTokenPhrase;
        if (t.get(t.size() - 1).value.equals("{")) {
            if (t.size() > 2) {
                setErrorMsg("Check else statement.");
            }
            verifyValidity(Utils.VerificationTypes.ELSE);
        }
    }

    public static void checkClassStatementValidity() {
        ArrayList<Token> t = Vars.currentTokenPhrase;
        if (t.get(t.size() - 1).value.equals("{")) {
            if (t.size() != 3) {
                setErrorMsg("Check class statement.");
            } else if (t.get(1).type != Token.TokenType.IDENTIFIER) {
                setErrorMsg("Class name should be identifier.");
            }
            verifyValidity(Utils.VerificationTypes.CLASS);
        }
    }

    public static void checkSubroutineStatementValidity() {
        ArrayList<Token> t = Vars.currentTokenPhrase;
        ArrayList<Token> subExp = null;
        if (t.get(t.size() - 1).value.equals("{")) {
            if (t.size() < 6) {
                setErrorMsg("Checks subroutine declaration.");
            } else {
                if (
                    !Utils.dataTypes.contains(t.get(1).value) && 
                    t.get(1).type != Token.TokenType.IDENTIFIER && 
                    !t.get(1).value.equals("void")
                ) {
                    setErrorMsg("Not valid subroutine return type: " + t.get(1).value);
                } else if (t.get(2).type != Token.TokenType.IDENTIFIER) {
                    setErrorMsg("Not valid subroutine name: " + t.get(2).value);
                } else {
                    subExp = Utils.getSubExpression(4, ")", t, 1);
                    if (subExp.size() > 0) {
                        checkArgumentListValidity(subExp);
                    }
                }
                if (isValid) {
                    Vars.declaredSubroutines.add(Vars.currentClassName + "." + t.get(2).value);
                }
            }
            verifyValidity(Utils.VerificationTypes.SUBROUTINE);
        }
    }

    public static void checkClassVarValidity(Utils.VerificationTypes type) {
        ArrayList<Token> t = Vars.currentTokenPhrase;
        if (t.get(t.size() - 1).value.equals(";")) {
            if (t.size() < 4) {
                setErrorMsg("Check var/field statement.");
            } else {
                if (!Utils.dataTypes.contains(t.get(1).value) && t.get(1).type != Token.TokenType.IDENTIFIER) {
                    setErrorMsg("Not supported data type: " + t.get(1).value);
                } else {
                    checkClassVarListValidity(new ArrayList<>(t.subList(2, t.size()-1)));
                }
            }
            verifyValidity(type);
        }
    }

    public static void checkDoStatementValidity() {
        ArrayList<Token> t = Vars.currentTokenPhrase;
        ArrayList<Token> subExp = null;
        if (t.get(t.size() - 1).value.equals(";")) {
            if (t.size() < 5) {
                setErrorMsg("Check do statement.");
            } else if (!t.get(t.size() - 2).value.equals(")")) {
                setErrorMsg("Expecting ) at the end of method call.");
            } else if (
                !(t.get(2).value.equals("(") && t.get(1).type == Token.TokenType.IDENTIFIER)
                &&
                !(t.get(2).value.equals(".") && 
                t.get(1).type == Token.TokenType.IDENTIFIER && 
                t.get(3).type == Token.TokenType.IDENTIFIER)
            ) {
                setErrorMsg("Check subroutine call.");
            } else {
                subExp = new ArrayList<>(t.subList(1, t.size()-1));
                checkExpressionValidity(subExp);
            }
            verifyValidity(Utils.VerificationTypes.DO);
        }
    }
     
    private static void checkExpressionListValidity(ArrayList<Token> expList) {
        ArrayList<Token> subExp = Utils.getSubExpression(0, ",", expList, 0);
        checkExpressionValidity(subExp);
        if (expList.size() > subExp.size()) {
            if (expList.get(expList.size()-1).value.equals(",")) {
                setErrorMsg("Expecting expression after , ");
            } else {
                checkExpressionListValidity(new ArrayList<>(expList.subList(subExp.size()+1, expList.size())));
            }
        }
    }

    private static void checkExpressionValidity(ArrayList<Token> exp) {

        if (isValid) {

            ArrayList<Token> subExp = null;

            if (exp.size() == 1) {
                checkSingleTermValidity(exp.get(0));
            } 

            else if (exp.size() > 1) {

                if (exp.get(0).value.equals("(")) {
                    subExp = Utils.getSubExpression(1, ")", exp, 1);
                    checkExpressionValidity(subExp);
                } 

                else if (exp.get(0).type == Token.TokenType.IDENTIFIER) {

                    if (exp.get(1).value.equals(".")) {

                        if (exp.size() < 4) {
                            setErrorMsg("Not valid subroutine call.");
                        } 

                        else {

                            if (exp.get(2).type != Token.TokenType.IDENTIFIER) {
                                setErrorMsg("Not valid method declaration: " + exp.get(2).value + ".");
                            } 

                            else if (!exp.get(3).value.equals("(")) {
                                setErrorMsg("Expected ( instead got: " + exp.get(3).value);
                            } 

                            else {
                                checkSubroutineBodyValidity(exp, 4, ")");
                            }
                            if (isValid) {
                                Variable var = Variable.getVar(exp.get(0).value);
                                if (var != null) {
                                    Vars.calledSubroutines.add(var.type+"."+exp.get(2).value);
                                } else {
                                    Vars.calledSubroutines.add(exp.get(0).value+"."+exp.get(2).value);
                                }
                            }
                        }
                    } 

                    else if (exp.get(1).value.equals("(")) {
                        if (exp.size() < 3) {
                            setErrorMsg("Not valid subroutine call.");
                        } else {
                            checkSubroutineBodyValidity(exp, 2, ")");
                        }
                        if (isValid) {
                            Vars.calledSubroutines.add(Vars.currentClassName+"."+exp.get(0).value);
                        }
                    } 

                    else if (exp.get(1).value.equals("[")) {
                        checkIdentifier(exp.get(0));
                        if (isValid) {
                            checkSubroutineBodyValidity(exp, 2, "]");
                        }
                    } 

                    else {
                        checkTermAndOpValidity(exp);
                    }
                } 

                else if (
                    exp.get(0).value.equals("-") || 
                    exp.get(0).value.equals("~")
                ) {
                    subExp = Utils.getSubExpression(0, "unary", exp, 0);
                    int index = checkUnaryTermValidity(subExp);
                    checkExpressionValidity(new ArrayList<>(subExp.subList(index, subExp.size())));
                    if (isValid) {
                        if (exp.size() > subExp.size()) {
                            checkMathOpValidity(exp.get(subExp.size()));
                            checkExpressionValidity(new ArrayList<>(exp.subList(subExp.size()+1, exp.size())));
                        }
                    }
                } 

                else {
                    checkTermAndOpValidity(exp);
                }
            } else {
                if (prevOp != null) {
                    setErrorMsg("Missing term after operator "  + prevOp.value);
                }
            }
        }
    }

    private static int checkUnaryTermValidity(ArrayList<Token> unaryTerm) {
        int index = 0;
        for (Token tkn : unaryTerm) {
            if (tkn.value.equals("-") || tkn.value.equals("~")) {
                index++;
            } else {
                break;
            }
        }
        return index;
    }

    private static void checkTermAndOpValidity(ArrayList<Token> exp) {
        checkSingleTermValidity(exp.get(0));
        checkMathOpValidity(exp.get(1));
        checkExpressionValidity(new ArrayList<>(exp.subList(2, exp.size())));
    }

    private static void checkSubroutineBodyValidity(ArrayList<Token> exp, int index, String divider) {
        ArrayList<Token> subExp = null;
        subExp = Utils.getSubExpression(index, divider, exp, 1);
        if (subExp.size() > 0) {
            checkExpressionListValidity(subExp);
        }
        if (exp.size() > subExp.size() + index+1) {
            checkMathOpValidity(exp.get(subExp.size()+index+1));
            checkExpressionValidity(new ArrayList<>(exp.subList(subExp.size()+index+2, exp.size())));
        }
    }

    private static void checkClassVarListValidity(ArrayList<Token> list) {
        ArrayList<Token> subList = 
        Utils.getSubExpression(0, ",", list, 0);
        if (subList.size() == 0) {
            setErrorMsg("Missing identifier after , ");
        } else if (subList.size() > 1) {
            setErrorMsg("Check var/field declaration.");
        } else if (subList.get(0).type != Token.TokenType.IDENTIFIER) {
            setErrorMsg("Expected identifier, got " + subList.get(0).value);
        }
        if (isValid && list.size() > subList.size()) {
            checkClassVarListValidity(new ArrayList<>(list.subList(subList.size()+1, list.size())));
        }
    }

    private static void checkArgumentListValidity(ArrayList<Token> list) {
        ArrayList<Token> subList = 
        Utils.getSubExpression(0, ",", list, 0);
        if (subList.size() != 2) {
            setErrorMsg("Checks arguments.");
        } else {
            if (!Utils.dataTypes.contains(subList.get(0).value) && 
                subList.get(0).type != Token.TokenType.IDENTIFIER) {
                setErrorMsg("Checks argument type.");
            } else if (subList.get(1).type != Token.TokenType.IDENTIFIER) {
                setErrorMsg("Checks argument name.");
            }
            if (isValid && list.size() > subList.size()) {
                checkArgumentListValidity(new ArrayList<>(list.subList(subList.size()+1, list.size())));
            }
        }
    }

    private static void checkIdentifier(Token expToken) {
        if (expToken.type == Token.TokenType.IDENTIFIER) {
            Variable var = Variable.getVar(expToken.value);
            if (var == null) {
                setErrorMsg("Token " + expToken.value + " is undefined.");
            }
        }
    }

    private static void checkSingleTermValidity(Token token) {
        if (token.type == Token.TokenType.KEYWORD) {
            if (
                !token.value.equals("true")     && 
                !token.value.equals("false")    &&
                !token.value.equals("this")     &&
                !token.value.equals("null")
            ) {
                setErrorMsg("Not valid term keyword: " + token.value);
            }
        } else if (token.type == Token.TokenType.SYMBOL) {
            if (!token.value.equals("-") && !token.value.equals("~") && !token.value.equals("(")) {
                setErrorMsg("Not valid term symbol: " + token.value);
            }
        } else if (token.type == Token.TokenType.IDENTIFIER) {
            checkIdentifier(token);
        }
    }

    private static void checkMathOpValidity(Token op) {
        if (!"+-*/&|<>=".contains(op.value)) {
            setErrorMsg("Not valid operator " + op.value + " after term.");
        } else {
            prevOp = op;
        }
    }

    private static void setErrorMsg(String msg) {
        isValid = false;
        message += "Error Compiling class " + Vars.currentClassName  + "." +
        " Subroutine " + Vars.subroutineName + ". ";
        message += msg;
        message += " Token Phrase: ";
        for (Token tkn : Vars.currentTokenPhrase) {
            message += tkn.value + " ";
        }
    }

    private static void verifyValidity(Utils.VerificationTypes type) {
        if (isValid) {
            if (type == Utils.VerificationTypes.CLASS) {
                CompilationEngine.compileClassStatement();
            } else if (type == Utils.VerificationTypes.FIELD) {
                CompilationEngine.compileClassVarStatement();
            } else if (type == Utils.VerificationTypes.IF) {
                CompilationEngine.compileIfStatement();
            } else if (type == Utils.VerificationTypes.LET) {
                CompilationEngine.compileLetStatement();
            } else if (type == Utils.VerificationTypes.RETURN) {
                CompilationEngine.compileReturnStatement();
            } else if (type == Utils.VerificationTypes.SUBROUTINE) {
                CompilationEngine.compileSubroutineStatement();
            } else if (type == Utils.VerificationTypes.VAR) {
                CompilationEngine.compileVarStatement();
            } else if (type == Utils.VerificationTypes.WHILE) {
                CompilationEngine.compileWhileStatement();
            } else if (type == Utils.VerificationTypes.DO) {
                CompilationEngine.compileDoStatement();
            }
            Vars.currentTokenPhrase.clear();
            prevOp = null;
        } else {
            Vars.isValid = false;
            Vars.errorMsg = message;
        }
    }
}
