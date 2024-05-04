package web;

import Dao.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        // Validate username, password, and email
        if (username != null && !username.isEmpty() &&
                password != null && !password.isEmpty() &&
                email != null && !email.isEmpty()) {
            // Register user
            boolean registered = UserDao.register(username, password, email);
            if (registered) {
                response.sendRedirect("login.jsp");
            } else {
                response.sendRedirect("signup.jsp?error=1");
            }
        } else {
            response.sendRedirect("signup.jsp?error=2");
        }
    }
}