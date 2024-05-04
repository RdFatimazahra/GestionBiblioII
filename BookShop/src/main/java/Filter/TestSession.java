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

@WebFilter(filterName = "testSession", urlPatterns = {""})
public class TestSession implements Filter {
    private static UserDao userDao = new UserDaoImpl();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialisation du filtre
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String path = request.getRequestURI().substring(request.getContextPath().length());

        if (!path.equals("/LogIn") && !path.equals("/SignUp")){
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            if(user!=null)
            {
                filterChain.doFilter(servletRequest, servletResponse);
            }
            else{
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/LogIn.jsp");
                dispatcher.include(request, response);
            }
        }
        else{
            filterChain.doFilter(servletRequest, servletResponse);

        }

    }

    @Override
    public void destroy() {
        // Destruction du filtre
    }
}

