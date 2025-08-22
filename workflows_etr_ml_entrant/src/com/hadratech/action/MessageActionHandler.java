package com.hadratech.action;

//import org.jbpm.graph.def.ActionHandler;
//import org.jbpm.graph.exe.ExecutionContext;

//implements ActionHandler
public class MessageActionHandler  {
    private static final long serialVersionUID = 1L;

    private String message;
/**
    @Override
    public void execute(ExecutionContext context) throws Exception {
        if (message != null) {
            System.out.println("Workflow message: " + message);
        } else {
            System.out.println("Workflow message: [no message provided]");
        }
    }
*/
    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }
}
