package Filter;

import Dao.UserDao;
import Dao.UserDaoImpl;
import Model.User;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebFilter("/Signup")
public class FilterSignup implements Filter {
    private static UserDao userDao = new UserDaoImpl();

    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialisation du filtre
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String type = request.getParameter("type");

        User newUser = new User(username, email, password);

        try {
            // Vérifie si l'email est déjà utilisé
            if (userDao.getUser(email) != null) {
                request.setAttribute("error", "Email already in use");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/SignUp.jsp");
                dispatcher.include(request, response);
            } else {
                // Insère le nouvel utilisateur dans la base de données
                userDao.insertUser(newUser);
                response.sendRedirect("login.jsp"); // Redirige vers la page de connexion après l'inscription
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Error processing signup request", e);
        }
    }

    @Override
    public void destroy() {
        // Destruction du filtre
    }
}
