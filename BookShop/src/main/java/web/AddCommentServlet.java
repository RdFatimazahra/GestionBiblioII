package web;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import DB.DbConnectionn;

public class AddCommentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer les données du formulaire
        String feedbackText = request.getParameter("feedback");
        int livreId = Integer.parseInt(request.getParameter("livreId")); // Suppose que vous avez un champ caché dans votre formulaire avec le nom "livreId" pour stocker l'ID du livre
        int membreId = Integer.parseInt(request.getParameter("membreId")); // Suppose que vous avez un champ caché dans votre formulaire avec le nom "membreId" pour stocker l'ID du membre

        // Connexion à la base de données
        Connection connection = null;
        try {
            connection = DbConnectionn.getConnection();

            // Créer la requête SQL pour insérer le commentaire
            String sql = "INSERT INTO feedback (feedback, idLivre, idMembre) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, feedbackText);
            statement.setInt(2, livreId);
            statement.setInt(3, membreId);

            // Exécuter la requête SQL
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("Un nouveau commentaire a été ajouté avec succès !");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Fermer la connexion à la base de données
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
