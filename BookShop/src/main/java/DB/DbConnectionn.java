package DB;

<<<<<<< HEAD

=======
>>>>>>> d505625704401a3632d578fd16ce7bbc8e44dedf
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnectionn {
    private static final String URL = "jdbc:postgresql://localhost:5432/GestionBiblioII";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "admin";

    public static Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (SQLException e) {
            System.err.println("Error connecting to the database: " + e.getMessage());
            throw e;
        }
        return connection;
    }
<<<<<<< HEAD
}
=======
}
>>>>>>> d505625704401a3632d578fd16ce7bbc8e44dedf
