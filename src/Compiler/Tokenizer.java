public class Tokenizer {

    public static void tokenizeString(String input) {

        int i = 0;
        String currentToken = "";
        Boolean processingStringConst = false;

        while (i < input.length() && Vars.isValid) {

            char c = input.charAt(i);

            if (c == '/' && i+1 < input.length() && input.charAt(i+1) == '*') {
                Vars.processingComment = true;
                i++;
            } 

            if (Vars.processingComment == false) {
                if (c == '\"' && processingStringConst == false) {
                    processingStringConst = true;
                } else if (c != '\"' && processingStringConst == true) {
                    currentToken += c;
                } else if (c == '\"' && processingStringConst == true) {
                    Vars.currentTokenPhrase.add(new Token(Token.TokenType.STRING_CONSTANT, currentToken));
                    processingStringConst = false;
                    currentToken = "";
                    checkCurrentTokenPhraseValidity();
                } else if (Utils.symbols.contains(String.valueOf(c)) | Character.isWhitespace(c)) {
                    prepareToken(currentToken);
                    currentToken = "";
                    if (Utils.symbols.contains(String.valueOf(c))) {
                        Vars.currentTokenPhrase.add(new Token(Token.TokenType.SYMBOL, String.valueOf(c)));
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
                    Vars.processingComment = false; 
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
            if (Utils.keywords.contains(currentToken)) {
                Vars.currentTokenPhrase.add(new Token(Token.TokenType.KEYWORD, currentToken));
                checkCurrentTokenPhraseValidity();
            } else if (Character.isDigit(currentToken.charAt(0))) {
                Vars.currentTokenPhrase.add(new Token(Token.TokenType.INT_CONSTANT, currentToken));
                checkCurrentTokenPhraseValidity();
            } else {
                Vars.currentTokenPhrase.add(new Token(Token.TokenType.IDENTIFIER, currentToken));
                checkCurrentTokenPhraseValidity();
            }
        }
    }
    
    private static void checkCurrentTokenPhraseValidity() {
        Token startToken = Vars.currentTokenPhrase.get(0);
        if (Vars.waitingForNextToken == true) {
            if (startToken.value.equals("else")) {
                CompilationEngine.closeStatement("if else");
            } else {
                CompilationEngine.closeStatement("if");
            }
            Vars.waitingForNextToken = false;
        }
        if (startToken.type == Token.TokenType.KEYWORD) {
            if (startToken.value.equals("let")) {
                LexicalAnalyzer.checkLetStatementValidity();
            } else if (startToken.value.equals("if")) {
                LexicalAnalyzer.checkIf_While_StatementValidity(Utils.VerificationTypes.IF);
            } else if (startToken.value.equals("else")) {
                LexicalAnalyzer.checkElseStatementValidity();
            } else if (startToken.value.equals("while")) {
                LexicalAnalyzer.checkIf_While_StatementValidity(Utils.VerificationTypes.WHILE);
            } else if (startToken.value.equals("class")) {
                LexicalAnalyzer.checkClassStatementValidity();
            } else if (
                startToken.value.equals("static") || 
                startToken.value.equals("field")
            ) {
                LexicalAnalyzer.checkClassVarValidity(Utils.VerificationTypes.FIELD);
            } else if (startToken.value.equals("constructor")   || 
                startToken.value.equals("function")             || 
                startToken.value.equals("method")
            ) {
                LexicalAnalyzer.checkSubroutineStatementValidity();
            } else if (startToken.value.equals("var")) {
                LexicalAnalyzer.checkClassVarValidity(Utils.VerificationTypes.VAR);
            } else if (startToken.value.equals("do")) {
                LexicalAnalyzer.checkDoStatementValidity();
            } else if (startToken.value.equals("return")) {
                LexicalAnalyzer.checkReturnStatementValidity();
            }
        } else if (startToken.value.equals("}")) {
            if (!Vars.statementContextsStack.isEmpty()) {
                Vars.currentContext = Vars.statementContextsStack.pop();
                if (Vars.currentContext.startsWith(Vars.currentClassName + "_IF_")) {
                    // cannot close 'if' right now, need to wait for the next token, if it is 'else' or other token
                    Vars.waitingForNextToken = true;
                } else {
                    CompilationEngine.closeStatement(Vars.currentContext);
                }
                Vars.currentTokenPhrase.clear();
            } else {
                Vars.isValid = false;
                Vars.errorMsg = "Error Compiling class " + Vars.currentClassName  + "." +
                " Error: Unmatched closing braket.";
            }
        } else {
            Vars.isValid = false;
            Vars.errorMsg = "Error Compiling class " + Vars.currentClassName  + "." +
            " Error: The first token must be a keyword. Instead got " + startToken.value;
        }
    }
}
