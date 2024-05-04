package Dao;

import Model.User;

import java.sql.SQLException;

public interface UserDao {
    int verifieUser(String login, String passWord);

    void insertUser(User user);

    User getUser(String email) throws SQLException, ClassNotFoundException;

    int getEndId();
}


