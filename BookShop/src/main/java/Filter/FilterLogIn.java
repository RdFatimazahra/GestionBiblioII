package Filter;

import Dao.UserDao;
import Dao.UserDaoImpl;
import Model.User;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebFilter("/Login")
public class FilterLogIn implements Filter {
    private static UserDao userDao = new UserDaoImpl();

    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialisation du filtre
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
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
