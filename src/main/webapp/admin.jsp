<%@ page import="java.util.List" %>
    <%@ page import="com.neonreads.model.Book" %>
        <%@ page import="com.neonreads.model.Category" %>
            <%@ page import="com.neonreads.model.User" %>
                <%@ page contentType="text/html;charset=UTF-8" language="java" %>
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <title>NeonReads - Admin Dashboard</title>
                        <link rel="stylesheet" href="css/style.css">
                    </head>

                    <body>
                        <% User user=(User) session.getAttribute("user"); if (user==null ||
                            !"ADMIN".equals(user.getRole())) { response.sendRedirect("login.jsp"); return; } List<Book>
                            listBooks = (List<Book>) request.getAttribute("listBooks");
                                %>

                                <header>
                                    <div class="logo">NeonReads Admin</div>
                                    <div class="header-actions">
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
                                            <a href="books">View Site</a>
                                            <a href="logout">Logout</a>
                                        </div>
                                    </div>
                                </header>
                                <script src="js/theme.js"></script>

                                <div class="container">
                                    <div
                                        style="display: flex; justify-content: space-between; align-items: center; margin: 30px 0;">
                                        <h2 style="color: var(--primary-color);">Manage Books</h2>
                                        <div>
                                            <a href="admin?action=seed" class="btn"
                                                style="margin-right: 15px; background: linear-gradient(135deg, #FF9800, #F57C00);"
                                                onclick="return confirm('This will add sample books. Continue?');">Seed
                                                Data</a>
                                            <a href="admin?action=new" class="btn">Add New Book</a>
                                        </div>
                                    </div>

                                    <div class="table-container">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Title</th>
                                                    <th>Author</th>
                                                    <th>Category</th>
                                                    <th>Price</th>
                                                    <th>Stock</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <% if (listBooks !=null) { for (Book book : listBooks) { %>
                                                    <tr>
                                                        <td>
                                                            <%= book.getId() %>
                                                        </td>
                                                        <td>
                                                            <%= book.getTitle() %>
                                                        </td>
                                                        <td>
                                                            <%= book.getAuthor() %>
                                                        </td>
                                                        <td>
                                                            <%= book.getCategoryName() %>
                                                        </td>
                                                        <td>₹<%= book.getPrice() %>
                                                        </td>
                                                        <td>
                                                            <%= book.getStock() %>
                                                        </td>
                                                        <td>
                                                            <a href="admin?action=edit&id=<%= book.getId() %>"
                                                                style="color: var(--secondary-color); margin-right: 15px;">Edit</a>
                                                            <a href="admin?action=delete&id=<%= book.getId() %>"
                                                                style="color: var(--error-color);"
                                                                onclick="return confirm('Are you sure?');">Delete</a>
                                                        </td>
                                                    </tr>
                                                    <% } } %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                    </body>

                    </html>