package SignUp;

public class Handicap {
    private boolean isHandicapped;
    private String description;

    public Handicap(){
        this.isHandicapped=false;
        this.description=null;
    }

    public boolean getIsHandicapped(){return this.isHandicapped;}
    public String getDescription(){return this.description;}

    public void setIsHandicapped(boolean b){this.isHandicapped=b;}
    public void setDescription(String s){this.description=s;}
}
