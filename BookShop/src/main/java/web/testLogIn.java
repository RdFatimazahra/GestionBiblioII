package web;

import Model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "testLogIn", value = "/testLogIn")
public class testLogIn extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();


        User user = (User) session.getAttribute("user");



        if (user != null && user.getType().equals("admin")) {




            response.sendRedirect("/Megarama_BM_war_exploded/Add");

        } else {

            response.sendRedirect("/Megarama_BM_war_exploded/ShowFilms");


        }
    }
}