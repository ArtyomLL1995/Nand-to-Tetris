import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.Stack;

public class Vars {

    public static Set<String> declaredSubroutines = new HashSet<>(Set.of("Array.new", "Array.dispose", "Keyboard.init", 
    "Keyboard.keyPressed", "Keyboard.readChar", "Keyboard.readLine", "Keyboard.readInt", "Math.init", "Math.multiply",
    "Math.divide", "Math.sqrt", "Math.max", "Math.min", "Math.abs", "Memory.init", "Memory.peek", "Memory.poke", "Memory.alloc",
    "Memory.deAlloc", "Output.init", "Output.initMap", "Output.create", "Output.getMap", "Output.moveCursor", "Output.printChar",
    "Output.printString", "Output.printInt", "Output.println", "Output.backSpace", "Screen.init", "Screen.clearScreen", "Screen.setColor",
    "Screen.drawPixel", "Screen.drawLine", "Screen.drawRectangle", "Screen.drawCircle", "String.new", "String.dispose", "String.length",
    "String.charAt", "String.setCharAt", "String.appendChar", "String.eraseLastChar", "String.intValue", "String.setInt", "String.newLine", 
    "String.backSpace", "String.doubleQuote", "Sys.init", "Sys.halt", "Sys.wait", "Sys.error")); // Pre-populated standard library

    public static Set<String> calledSubroutines = new HashSet<>();

    public static Boolean isValid = true;
    public static String errorMsg = "All codes compiled successfully!";

    public static int fieldCounter = 0;
    public static int staticCounter = 0;
    public static int argumentCounter = 0;

    public static HashMap<String,Variable> classSymbolTable = new HashMap<>();
    public static HashMap<String,Variable> subroutineSymbolTable = new HashMap<>();

    public static Stack<String> statementContextsStack = new Stack<>(); // class, constructor, function, method, if, while

    public static ArrayList<Token> currentTokenPhrase = new ArrayList<>();

    public static StringBuilder compilerCodeBuilder;

    public static String subroutineName = "";
    public static String currentClassName = "";
    public static String currentContext = "";
    public static String prevTerm;

    public static int ifCounter = 0;
    public static int whileCounter = 0;
    public static int localCounter = 0;
    public static int elseCounter = 0;

    public static Boolean processingComment = false;

    public static Boolean waitingForNextToken = false;
    
}
