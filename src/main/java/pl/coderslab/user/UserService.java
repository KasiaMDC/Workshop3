package pl.coderslab.user;

import org.mindrot.jbcrypt.BCrypt;

public class UserService {

    private static UserService instance;

    public void setUserHashedPassword(User user, String password) {
        String hashed = BCrypt.hashpw(password, BCrypt.gensalt());
        user.setPassword(hashed);
    }

    static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }

    public boolean checkUserPassword(User user, String password) {
        return BCrypt.checkpw(password, user.getPassword());
    }

    public User createNewUser(String name, String email, String password){
        User user = new User(name, email);
        setUserHashedPassword(user,password);
        return user;
    }

    public void addUserTooDatabase(User user){
        UserDao userDao = UserDao.getInstance();
        userDao.saveNewUserToDB(user);
    }

    public void editUserInDatabase(User user, int id){
        UserDao userDao = UserDao.getInstance();
        userDao.updateUser(user, id);
    }
}