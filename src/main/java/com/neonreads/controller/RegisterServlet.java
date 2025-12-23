package com.neonreads.controller;

import com.neonreads.dao.UserDAO;
import com.neonreads.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private UserDAO userDAO;

    public void init() {
        userDAO = new UserDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        // Default role is CUSTOMER, handled in DB or Constructor.
        // Here we can explicitly set it or let the constructor handle it.
        // The simplistic User constructor was: new User(name, email, pass, role)

        User newUser = new User(name, email, password, "CUSTOMER");

        if (userDAO.registerUser(newUser)) {
            response.sendRedirect("login.jsp?registered=true");
        } else {
            request.setAttribute("error", "Registration failed. Email might already exist.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}
