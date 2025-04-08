package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import model.User;
import org.hibernate.Session;
import org.hibernate.query.Query;
import util.HibernateUtil;

import java.io.IOException;

@WebServlet("/login")
public class AuthServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<User> query = session.createQuery("FROM User WHERE username = :username AND password = :password", User.class);
        query.setParameter("username", username);
        query.setParameter("password", password);

        User user = query.uniqueResult();
        session.close();

        if (user != null) {
            request.setAttribute("message", "Login successful!");
            request.getRequestDispatcher("users.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Invalid credentials!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
