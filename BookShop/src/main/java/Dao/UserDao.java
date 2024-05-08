package Dao;

<<<<<<< HEAD

import DB.DbConnectionn;
import Model.User;

import java.sql.*;

public class UserDao {
    private static final String GET_USER_QUERY = "SELECT * FROM users WHERE email = ?";
    private static final String REGISTER_USER_QUERY = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";

    public static User getUser(String email) throws SQLException, ClassNotFoundException {
        DatabaseMetaData DbConnection = null;
        Connection connection = DbConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(GET_USER_QUERY);
        preparedStatement.setString(1, email);
        ResultSet resultSet = preparedStatement.executeQuery();
        User user = null;
        if (resultSet.next()) {
            user = new User();
            user.setEmail(resultSet.getString("email"));
            user.setPassword(resultSet.getString("password"));
            // Set other user attributes if needed
        }
        return user;
    }

    public static boolean register(String username, String password, String email) {
        boolean registered = false;
        try {
            Connection connection = DbConnectionn.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(REGISTER_USER_QUERY);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, email);
            int rows = preparedStatement.executeUpdate();
            if (rows > 0) {
                registered = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return registered;
    }
=======
import Model.User;

import java.sql.SQLException;

public interface UserDao {
    int verifieUser(String login, String passWord);

    void insertUser(User user);

    User getUser(String email) throws SQLException, ClassNotFoundException;

    int getEndId();
>>>>>>> d505625704401a3632d578fd16ce7bbc8e44dedf
}


