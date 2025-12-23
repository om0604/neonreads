<%@ page import="java.util.List" %>
    <%@ page import="com.neonreads.model.Book" %>
        <%@ page import="com.neonreads.model.Category" %>
            <%@ page import="com.neonreads.model.User" %>
                <%@ page contentType="text/html;charset=UTF-8" language="java" %>
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <title>NeonReads - Home</title>
                        <link rel="stylesheet" href="css/style.css">
                    </head>

                    <body>
                        <% User user=(User) session.getAttribute("user"); List<Book> books = (List<Book>)
                                request.getAttribute("books");
                                List<Category> categories = (List<Category>) request.getAttribute("categories");
                                        %>

                                        <header>
                                            <div class="logo">NeonReads</div>

                                            <!-- Search Bar Removed -->

                                            <div
                                                style="display: flex; align-items: center; gap: 20px; margin-left: auto;">
                                                <div class="theme-switch-wrapper">
                                                    <label class="theme-switch" for="checkbox">
                                                        <input type="checkbox" id="checkbox" />
                                                        <div class="slider round">
                                                            <span class="icon-sun">☀️</span>
                                                            <span class="icon-moon">🌙</span>
                                                        </div>
                                                    </label>
                                                </div>

                                                <div class="nav-links">
                                                    <a href="cart" class="cart-icon"
                                                        style="font-size: 1.2rem; margin-right: 15px;">🛒 Cart</a>
                                                    <% if (user !=null) { %>
                                                        <span style="color: var(--text-secondary);">Welcome, <%=
                                                                user.getName() %></span>
                                                        <% if ("ADMIN".equals(user.getRole())) { %>
                                                            <a href="admin">Admin Dashboard</a>
                                                            <% } %>
                                                                <a href="logout">Logout</a>
                                                                <% } else { %>
                                                                    <a href="login.jsp">Login</a>
                                                                    <a href="register.jsp">Register</a>
                                                                    <% } %>
                                                </div>
                                            </div>
                                        </header>
                                        <script src="js/theme.js"></script>

                                        <div class="container main-content">
                                            <aside class="sidebar">
                                                <h3>Categories</h3>
                                                <ul>
                                                    <li><a href="books">All Books</a></li>
                                                    <% if (categories !=null) { for (Category c : categories) { %>
                                                        <li><a href="books?category=<%= c.getId() %>">
                                                                <%= c.getName() %>
                                                            </a></li>
                                                        <% } } %>
                                                </ul>
                                            </aside>

                                            <main class="books-grid">
                                                <% if (books !=null && !books.isEmpty()) { for (Book b : books) { %>
                                                    <div class="book-card">
                                                        <div class="book-image">
                                                            <% if (b.getImageUrl() !=null && !b.getImageUrl().isEmpty())
                                                                { %>
                                                                <img src="<%= b.getImageUrl() %>"
                                                                    alt="<%= b.getTitle() %>">
                                                                <% } else { %>
                                                                    <span>No Image</span>
                                                                    <% } %>
                                                        </div>
                                                        <div class="book-info">
                                                            <div class="book-title" title="<%= b.getTitle() %>">
                                                                <%= b.getTitle() %>
                                                            </div>
                                                            <div class="book-author">by <%= b.getAuthor() %>
                                                            </div>
                                                            <div
                                                                style="display: flex; justify-content: space-between; align-items: center;">
                                                                <div class="book-price">₹<%= b.getPrice() %>
                                                                </div>
                                                                <form action="cart" method="post" style="margin: 0;">
                                                                    <input type="hidden" name="action" value="add">
                                                                    <input type="hidden" name="bookId"
                                                                        value="<%= b.getId() %>">
                                                                    <button type="submit" class="btn"
                                                                        style="padding: 5px 15px; font-size: 0.8rem;">Add
                                                                        to Cart</button>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <% } } else { %>
                                                        <p>No books found.</p>
                                                        <% } %>
                                            </main>
                                        </div>
                    </body>

                    </html>