package SignUp;

import java.util.Vector;

public class Career {
    private String company;
    private String workStart;
    private String workEnd;
    public Career(){
        this.company=null;
        this.workStart=null;
        this.workEnd=null;
    }

    public String getCompany(){return company;}
    public String getWorkStart(){return workStart;}
    public String getWorkEnd(){return workEnd;}

    public void setCompany(String company){this.company=company;}
    public void setWorkStart(String workStart){this.workStart=workStart;}
    public void setWorkEnd(String workEnd){this.workEnd=workEnd;}

}
