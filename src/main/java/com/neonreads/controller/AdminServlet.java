package com.neonreads.controller;

import com.neonreads.dao.BookDAO;
import com.neonreads.model.Book;
import com.neonreads.model.Category;
import com.neonreads.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
    private BookDAO bookDAO;

    public void init() {
        bookDAO = new BookDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (!isAdmin(request)) {
            response.sendRedirect("login.jsp");
            return;
        }

        String action = request.getParameter("action");
        if (action == null)
            action = "list";

        switch (action) {
            case "insert":
                insertBook(request, response);
                break;
            case "update":
                updateBook(request, response);
                break;
            default:
                listBooks(request, response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (!isAdmin(request)) {
            response.sendRedirect("login.jsp");
            return;
        }

        String action = request.getParameter("action");
        if (action == null)
            action = "list";

        switch (action) {
            case "new":
                showNewForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteBook(request, response);
                break;
            case "seed":
                com.neonreads.dao.SeedData.seed(bookDAO);
                response.sendRedirect("admin");
                break;
            default:
                listBooks(request, response);
                break;
        }
    }

    private boolean isAdmin(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null)
            return false;
        User user = (User) session.getAttribute("user");
        return "ADMIN".equals(user.getRole());
    }

    private void listBooks(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Book> listBooks = bookDAO.getAllBooks();
        request.setAttribute("listBooks", listBooks);
        request.setAttribute("categories", bookDAO.getAllCategories()); // For potential filters or modal
        request.getRequestDispatcher("admin.jsp").forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Category> categories = bookDAO.getAllCategories();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("book-form.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Book existingBook = bookDAO.getBookById(id);
        List<Category> categories = bookDAO.getAllCategories();
        request.setAttribute("book", existingBook);
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("book-form.jsp").forward(request, response);
    }

    private void insertBook(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        double price = Double.parseDouble(request.getParameter("price"));
        int categoryId = Integer.parseInt(request.getParameter("category_id"));
        String description = request.getParameter("description");
        int stock = Integer.parseInt(request.getParameter("stock"));
        String imageUrl = request.getParameter("image_url");

        Book newBook = new Book(title, author, price, categoryId, description, stock, imageUrl);
        bookDAO.addBook(newBook);
        response.sendRedirect("admin");
    }

    private void updateBook(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        double price = Double.parseDouble(request.getParameter("price"));
        int categoryId = Integer.parseInt(request.getParameter("category_id"));
        String description = request.getParameter("description");
        int stock = Integer.parseInt(request.getParameter("stock"));
        String imageUrl = request.getParameter("image_url");

        Book book = new Book(id, title, author, price, categoryId, description, stock, imageUrl);
        bookDAO.updateBook(book);
        response.sendRedirect("admin");
    }

    private void deleteBook(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        bookDAO.deleteBook(id);
        response.sendRedirect("admin");
    }
}
