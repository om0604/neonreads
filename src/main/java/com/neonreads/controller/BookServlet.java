package com.neonreads.controller;

import com.neonreads.dao.BookDAO;
import com.neonreads.model.Book;
import com.neonreads.model.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/books")
public class BookServlet extends HttpServlet {
    private BookDAO bookDAO;

    public void init() {
        bookDAO = new BookDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String categoryId = request.getParameter("category");
        String searchQuery = request.getParameter("search");

        List<Book> books;
        if (searchQuery != null && !searchQuery.trim().isEmpty()) {
            books = bookDAO.searchBooks(searchQuery);
        } else if (categoryId != null && !categoryId.trim().isEmpty()) {
            try {
                int catId = Integer.parseInt(categoryId);
                books = bookDAO.getBooksByCategory(catId);
            } catch (NumberFormatException e) {
                books = bookDAO.getAllBooks();
            }
        } else {
            books = bookDAO.getAllBooks();
        }

        List<Category> categories = bookDAO.getAllCategories();

        request.setAttribute("books", books);
        request.setAttribute("categories", categories);

        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
}
