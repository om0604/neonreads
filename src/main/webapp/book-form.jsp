<%@ page import="java.util.List" %>
    <%@ page import="com.neonreads.model.Book" %>
        <%@ page import="com.neonreads.model.Category" %>
            <%@ page contentType="text/html;charset=UTF-8" language="java" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <title>NeonReads - Book Form</title>
                    <link rel="stylesheet" href="css/style.css">
                </head>

                <body>
                    <% Book book=(Book) request.getAttribute("book"); List<Category> categories = (List<Category>)
                            request.getAttribute("categories");
                            String action = (book != null) ? "update" : "insert";
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
                                        <a href="admin">Back to Dashboard</a>
                                    </div>
                                </div>
                            </header>
                            <script src="js/theme.js"></script>

                            <div class="container">
                                <div class="form-container" style="max-width: 600px;">
                                    <h2 style="text-align: center; margin-bottom: 20px; color: var(--neon-blue);">
                                        <%= (book !=null) ? "Edit Book" : "Add New Book" %>
                                    </h2>

                                    <form action="admin" method="post">
                                        <input type="hidden" name="action" value="<%= action %>">
                                        <% if (book !=null) { %>
                                            <input type="hidden" name="id" value="<%= book.getId() %>">
                                            <% } %>

                                                <div class="form-group">
                                                    <label>Title</label>
                                                    <input type="text" name="title"
                                                        value="<%= (book != null) ? book.getTitle() : "" %>" required>
                                                </div>

                                                <div class="form-group">
                                                    <label>Author</label>
                                                    <input type="text" name="author"
                                                        value="<%= (book != null) ? book.getAuthor() : "" %>" required>
                                                </div>

                                                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px;">
                                                    <div class="form-group">
                                                        <label>Price</label>
                                                        <input type="number" step="0.01" name="price"
                                                            value="<%= (book != null) ? book.getPrice() : "" %>"
                                                            required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Stock</label>
                                                        <input type="number" name="stock"
                                                            value="<%= (book != null) ? book.getStock() : "" %>"
                                                            required>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label>Category</label>
                                                    <select name="category_id">
                                                        <% if (categories !=null) { for (Category c : categories) {
                                                            boolean selected=(book !=null &&
                                                            book.getCategoryId()==c.getId()); %>
                                                            <option value="<%= c.getId() %>" <%=selected ? "selected"
                                                                : "" %>><%= c.getName() %>
                                                            </option>
                                                            <% } } %>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <label>Image URL</label>
                                                    <input type="text" name="image_url"
                                                        value="<%= (book != null) ? book.getImageUrl() : "" %>">
                                                </div>

                                                <div class="form-group">
                                                    <label>Description</label>
                                                    <textarea name="description"
                                                        rows="4"><%= (book != null) ? book.getDescription() : "" %></textarea>
                                                </div>

                                                <button type="submit" class="btn" style="width: 100%;">Save
                                                    Book</button>
                                    </form>
                                </div>
                            </div>
                </body>

                </html>