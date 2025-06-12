public class Token {

    public static enum TokenType {
        KEYWORD, IDENTIFIER, STRING_CONSTANT, INT_CONSTANT, SYMBOL
    }

    public TokenType type;
    public String value;

    public Token (
        TokenType type, 
        String value
    ) {
        this.type = type;
        this.value = value;
    }
}
