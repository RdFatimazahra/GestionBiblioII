package Filter;


import Dao.UserDao;
import Model.User;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/Login")
public class FilterLogIn implements Filter {
    private static UserDao userDao = new UserDao();

    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialisation du filtre
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, javax.servlet.ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String email = request.getParameter("Email");
        String password = request.getParameter("password");

        User user = null;
        try {
            user = userDao.getUser(email);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        HttpSession session = request.getSession();

        session.setAttribute("user", user);

        if (user != null && user.getPassword().equals(password)) {
            filterChain.doFilter(request, response);
        } else {
            request.setAttribute("error", "User not found");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/LogIn.jsp");
            dispatcher.include(request, response);
        }
    }

    @Override
    public void destroy() {
        // Destruction du filtre
    }
}

