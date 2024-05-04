package Dao;

import DB.DbConnectionn;
import Model.User;
import org.apache.taglibs.standard.tag.common.sql.DataSourceWrapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {

    @Override
    public int verifieUser(String login, String passWord) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = DbConnectionn.getConnection();

            preparedStatement = connexion.prepareStatement("select * from users where email = ? and password_user=?;");
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, passWord);
            ResultSet resultat =  preparedStatement.executeQuery();
            if(resultat.next())
            {
                System.out.println(resultat.getString("type_user"));
                String type =resultat.getString("type_user");
                if(type=="admin")
                {
                    return 1;
                }
                else {
                    return 2;
                }
            }
            else{
                return 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public void insertUser(User user) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = DbConnectionn.getConnection();

            preparedStatement = connexion.prepareStatement("insert into users (id_user,email,password_user,type_user) VALUES (?, ?, ?,?);");
            preparedStatement.setString(1,user.getUsername());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User getUser(String email) throws SQLException, ClassNotFoundException {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = DbConnectionn.getConnection();

            preparedStatement = connexion.prepareStatement("select * from users where email = ? ");
            preparedStatement.setString(1, email);
            ResultSet resultat =  preparedStatement.executeQuery();
            if(resultat.next())
            {
                User user = new User();
                user.setUsername(resultat.getString("username"));
                user.setEmail(resultat.getString("Email"));
                user.setPassword(resultat.getString("password_user"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int getEndId() {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            DataSourceWrapper DbConnectionn = null;
            connexion = DbConnectionn.getConnection();

            preparedStatement = connexion.prepareStatement("SELECT id_user FROM `users` ORDER BY `id_user` DESC LIMIT 1");
            ResultSet resultat =  preparedStatement.executeQuery();
            if(resultat.next())
            {
                return resultat.getInt("id_user");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0;
    }
}
