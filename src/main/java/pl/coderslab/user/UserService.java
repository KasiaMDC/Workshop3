package pl.coderslab.user;

import org.mindrot.jbcrypt.BCrypt;

public class UserService {
    public void setUserHashedPassword(User user, String password) {
        String hashed = BCrypt.hashpw(password, BCrypt.gensalt());
        user.setPassword(hashed);
    }

    public boolean checkUserPassword(User user, String password) {
        return BCrypt.checkpw(password, user.getPassword());
    }
}