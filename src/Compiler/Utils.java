import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Utils {

    public static enum VerificationTypes {
        RETURN, LET, IF, WHILE, ELSE, CLASS, FIELD, VAR, SUBROUTINE, DO
    }

    public static final List<String> mathSymbols = Arrays.asList(
        "+", "-", "*", "/", "&", "|", "<", ">", "=", "~"
    );

    public static final List<String> symbols = Arrays.asList(
        "{", "}", "(", ")", "[", "]", ".", ",", ";", "+", "-", "*", "/", "&", "|", "<", ">", "=", "~"
    );

    public static final List<String> dataTypes = Arrays.asList(
        "String", "Array", "int", "boolean", "char"
    );

    public static final List<String> keywords = Arrays.asList(
        "class", "constructor", "function", "method", "field", "static", "var",
        "int", "char", "boolean", "void", "true", "false", "null", "this",
        "let", "do", "if", "else", "while", "return"
    );

    public static ArrayList<Token> getSubExpression(
        int startIndex, 
        String divider, 
        ArrayList<Token> inputTokenPhrase,
        int openParenthesesCount
    ) {
        ArrayList<Token> subPhrase = new ArrayList<>();
        for (int i = startIndex; i < inputTokenPhrase.size(); i++) {
            Token token = inputTokenPhrase.get(i);
            if (!divider.contains("unary")) {
                if (token.type == Token.TokenType.SYMBOL) {
                    if ("([".contains(token.value)) {
                        openParenthesesCount++;
                    } else if (")]".contains(token.value)) {
                        openParenthesesCount--;
                    }
                    if (divider.contains(token.value) && openParenthesesCount == 0) {
                        break;
                    }
                }
                subPhrase.add(token);
            } else {
                subPhrase.add(token);
                if (i == inputTokenPhrase.size()-1) {
                    break;
                } else if (
                    token.type != Token.TokenType.SYMBOL && 
                    openParenthesesCount == 0 &&
                    !inputTokenPhrase.get(i+1).value.equals(".") && 
                    !inputTokenPhrase.get(i+1).value.equals("[") && 
                    !inputTokenPhrase.get(i+1).value.equals("(") && 
                    !inputTokenPhrase.get(i+1).value.equals(")") && 
                    !inputTokenPhrase.get(i+1).value.equals("]")
                ) {
                    break;
                } else if ("([".contains(token.value)) {
                    openParenthesesCount++;
                } else if (")]".contains(token.value)) {
                    openParenthesesCount--;
                    if (openParenthesesCount == 0) {
                        break;
                    }
                }
            }
        }
        return subPhrase;
    }

    public static void printTokens(ArrayList<Token> tokens) {
        System.out.println("Start Tokens:");
        for (Token token : tokens) {
            if (token.type == Token.TokenType.KEYWORD) {
                System.out.println("Keyword: " + token.value);
            } else if (token.type == Token.TokenType.IDENTIFIER) {
                System.out.println("Identifier: " + token.value);
            } else if (token.type == Token.TokenType.STRING_CONSTANT) {
                System.out.println("String Constant: " + token.value);
            } else if (token.type == Token.TokenType.INT_CONSTANT) {
                System.out.println("Integer Constant: " + token.value);
            } else if (token.type == Token.TokenType.SYMBOL) {
                System.out.println("Symbol: " + token.value);
            }
        }
        System.out.println("End Tokens:");
    }



}
