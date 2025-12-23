package com.neonreads.controller;

import com.neonreads.dao.BookDAO;
import com.neonreads.model.Book;
import com.neonreads.model.CartItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    private BookDAO bookDAO;

    public void init() {
        bookDAO = new BookDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "view";

        if ("view".equals(action)) {
            request.getRequestDispatcher("cart.jsp").forward(request, response);
        } else if ("checkout".equals(action)) {
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
        } else if ("remove".equals(action)) {
            removeItem(request, response);
        } else if ("decrease".equals(action)) {
            decreaseQuantity(request, response);
        } else if ("increase".equals(action)) { // Support direct increase from cart
            increaseQuantity(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            addToCart(request, response);
        } else if ("update".equals(action)) {
            // update quantity logic if needed
        } else if ("confirm_order".equals(action)) {
            confirmOrder(request, response);
        }
    }

    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        addOrIncrement(request, bookId);
        // Stay on page (Referer)
        String referer = request.getHeader("referer");
        response.sendRedirect(referer != null ? referer : "books");
    }

    private void increaseQuantity(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int bookId = Integer.parseInt(request.getParameter("id"));
        addOrIncrement(request, bookId);
        response.sendRedirect("cart");
    }

    private void addOrIncrement(HttpServletRequest request, int bookId) {
        HttpSession session = request.getSession();
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
            session.setAttribute("cart", cart);
        }

        boolean found = false;
        for (CartItem item : cart) {
            if (item.getBook().getId() == bookId) {
                item.setQuantity(item.getQuantity() + 1);
                found = true;
                break;
            }
        }

        if (!found) {
            Book book = bookDAO.getBookById(bookId);
            if (book != null) {
                cart.add(new CartItem(book, 1));
            }
        }
    }

    private void decreaseQuantity(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int bookId = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        if (cart != null) {
            Iterator<CartItem> iterator = cart.iterator();
            while (iterator.hasNext()) {
                CartItem item = iterator.next();
                if (item.getBook().getId() == bookId) {
                    if (item.getQuantity() > 1) {
                        item.setQuantity(item.getQuantity() - 1);
                    } else {
                        iterator.remove(); // Remove if qty becomes 0
                    }
                    break;
                }
            }
        }
        response.sendRedirect("cart");
    }

    private void removeItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int bookId = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        if (cart != null) {
            Iterator<CartItem> iterator = cart.iterator();
            while (iterator.hasNext()) {
                CartItem item = iterator.next();
                if (item.getBook().getId() == bookId) {
                    iterator.remove();
                    break;
                }
            }
        }
        response.sendRedirect("cart");
    }

    private void confirmOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

        if (cart != null && !cart.isEmpty()) {
            // Here you would normally save Order to DB using OrderDAO
            // For now, we simulate success

            // Clear cart
            session.removeAttribute("cart");

            // Redirect to thank you
            response.sendRedirect("thank_you.jsp");
        } else {
            response.sendRedirect("cart");
        }
    }
}
