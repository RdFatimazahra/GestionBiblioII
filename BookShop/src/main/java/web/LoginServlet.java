package web;

import Dao.UserDao;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate email and password
        if (email != null && !email.isEmpty() &&
                password != null && !password.isEmpty()) {
            // Authenticate user
            try {
                User user = UserDao.getUser(email);
                if (user != null && user.getPassword().equals(password)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    response.sendRedirect("dashboard.jsp");
                } else {
                    request.setAttribute("error", "Invalid email or password");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
                response.sendRedirect("login.jsp?error=1");
            }
        } else {
            response.sendRedirect("login.jsp?error=2");
        }
    }
}