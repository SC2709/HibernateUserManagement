package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import model.User;
import org.hibernate.Session;
import org.hibernate.query.Query;
import util.HibernateUtil;

import java.io.IOException;
import java.util.List;

@WebServlet("/users")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Open Hibernate session
        Session session = HibernateUtil.getSessionFactory().openSession();

        // Fetch all users
        Query<User> query = session.createQuery("FROM User", User.class);
        List<User> userList = query.list();
        session.close();

        // Set users as request attribute
        request.setAttribute("users", userList);

        // Forward to users.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("users.jsp");
        dispatcher.forward(request, response);
    }
}
