<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>NeonReads - Login</title>
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <header>
            <div class="logo">NeonReads</div>
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
                    <a href="register.jsp">Register</a>
                </div>
            </div>
        </header>
        <script src="js/theme.js"></script>

        <div class="container">
            <div class="form-container">
                <h2 style="text-align: center; margin-bottom: 20px; color: var(--primary-color);">Login</h2>

                <% if (request.getAttribute("error") !=null) { %>
                    <div style="color: var(--error-color); text-align: center; margin-bottom: 15px;">
                        <%= request.getAttribute("error") %>
                    </div>
                    <% } %>

                        <% if (request.getParameter("registered") !=null) { %>
                            <div style="color: var(--secondary-color); text-align: center; margin-bottom: 15px;">
                                Registration successful! Please login.
                            </div>
                            <% } %>

                                <form action="login" method="post">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" id="email" name="email" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" id="password" name="password" required>
                                    </div>
                                    <button type="submit" class="btn" style="width: 100%;">Login</button>
                                </form>
                                <div style="text-align: center; margin-top: 15px;">
                                    <p style="color: var(--text-secondary);">Don't have an account? <a
                                            href="register.jsp">Register</a></p>
                                </div>
            </div>
        </div>
    </body>

    </html>