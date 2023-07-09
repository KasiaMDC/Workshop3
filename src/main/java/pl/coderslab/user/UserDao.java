package pl.coderslab.user;

import pl.coderslab.utils.DbUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class UserDao {

    private static final String CREATE_USER_QUERY =
            "INSERT INTO users(email,username, password) VALUES (?, ?, ?)";
    private static final String UPDATE_USER_QUERY =
            "update users set email = ?, username = ?, password = ? where id = ?";
    private static final String READ_USER_QUERY_ID = "select * from users where id = ?";
    private static final String READ_USER_QUERY_USERNAME = "select * from users where username = ?";
    private static final String READ_USER_QUERY_EMAIL = "select * from users where email = ?";
    private static final String DELETE_USER_QUERY = "delete from users where id = ?";
    private static final String FIND_ALL_USER_QUERY = "select * from users";
    private static final String DELETE_ALL_USER_QUERY = "delete from users";

    private static UserDao instance;

    static UserDao getInstance() {
        if (instance == null) {
            instance = new UserDao();
        }
        return instance;
    }

    private void loadDriver(){
        /*try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e) {
            e.printStackTrace();
        }*/
    }

    public void saveNewUserToDB(User user) {
        loadDriver();
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(CREATE_USER_QUERY, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getName());
            ps.setString(3, user.getPassword());
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                user.setId(rs.getInt(1));
            }
        } catch (SQLException e) {
            System.out.println("User couldn't be added");
            e.printStackTrace();
        }
    }

    public User read(int userId) {
        loadDriver();
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(READ_USER_QUERY_ID);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setName(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setId(userId);
                return user;
            }
        } catch (SQLException e) {
            System.out.println("User couldn't be found");
            e.printStackTrace();
        }
        return null;
    }

    public void updateUser(User user, int id) {
        loadDriver();
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(UPDATE_USER_QUERY);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getName());
            ps.setString(3, user.getPassword());
            ps.setInt(4, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("User couldn't be edited");
            e.printStackTrace();
        }
    }

    public List<User> findAll() {
        loadDriver();
        List <User> result = new ArrayList<>();
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(FIND_ALL_USER_QUERY);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setName(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                result.add(user);
            }
        } catch (SQLException e) {
            System.out.println("User couldn't be found");
            e.printStackTrace();
        }
        return result;
    }

    private User[] enlargeUserArray(User[] result) {
        result = Arrays.copyOf(result, result.length + 1);
        return result;
    }

    public void delete(int userId){
        loadDriver();
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(DELETE_USER_QUERY);
            ps.setInt(1, userId);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("User couldn't be deleted");
            e.printStackTrace();
        }
    }
}
