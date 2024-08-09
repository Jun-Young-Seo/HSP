package SignUp;

public class SignUp {
    private String name;
    private int age;
    private String tel;
    private String gender;
    private String residence;
    private String mail;
    private String password;
    public SignUp() {
        this.name = null;
        this.age = -1;
        this.tel = null;
        this.gender = null;
        this.residence = null;
        this.mail = null;
        this.password=null;
    }
    /*
        getter methods
    */
    public String getName() {return name;}
    public int getAge() {return age;}
    public String getTel() {return tel;}
    public String getGender() {return gender;}
    public String getResidence() {return residence;}
    public String getMail() {return mail;}
    public String getPassword() {return password;}

    /*
        setter methods
    */
    public void setName(String name) {this.name = name;}
    public void setAge(int age) {this.age = age;}
    public void setTel(String tel) {this.tel = tel;}
    public void setGender(String gender) {this.gender = gender;}
    public void setResidence(String residence) {this.residence = residence;}
    public void setMail(String mail) {this.mail = mail;}
    public void setPassword(String password) {this.password = password;}
}
