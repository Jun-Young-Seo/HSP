package SignUp;

public class Education {
    private String level;
    private String state;

    public Education(){
        this.level=null;
        this.state=null;
    }

    public String getLevel(){return level;}
    public String getState(){return state;}

    public void setLevel(String level){this.level=level;}
    public void setState(String state){
        this.state=state;
    }
}
