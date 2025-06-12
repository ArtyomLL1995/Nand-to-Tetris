public class Variable {

    public String type;
    public String kind;
    public int num;
    
    public Variable(String type, String kind, int num) {
        this.type = type;
        this.kind = kind;
        this.num = num;
    }

    public static Variable getVar(String name) {
        Variable var = Vars.subroutineSymbolTable.get(name) != null 
        ? Vars.subroutineSymbolTable.get(name)
        : Vars.classSymbolTable.get(name);
        return var;
    }
}
