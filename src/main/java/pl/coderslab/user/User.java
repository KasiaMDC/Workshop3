package pl.coderslab.user;

public class User {
    private int id;
    private String name;
    private String email;
    private String password;

    public User(String name, String email) {
        this.name = name;
        this.email = email;
    }

    public User() {
    }

    public void setId(int id){
        this.id = id;
    }

    public void setName(String name){
        this.name = name;
    }

    public void setEmail(String email){
        this.email = email;
    }

    public void setPassword(String password){
        this.password = password;
    }
    public int getId(){
        return this.id;
    }

    public String getName(){
        return this.name;
    }

    public String getEmail(){
        return this.email;
    }

    public String getPassword(){
        return this.password;
    }



}
