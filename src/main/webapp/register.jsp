<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>NeonReads - Register</title>
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
                    <a href="login.jsp">Login</a>
                </div>
            </div>
        </header>
        <script src="js/theme.js"></script>

        <div class="container">
            <div class="form-container">
                <h2 style="text-align: center; margin-bottom: 20px; color: var(--neon-blue);">Create Account</h2>

                <% if (request.getAttribute("error") !=null) { %>
                    <div style="color: var(--error-color); text-align: center; margin-bottom: 15px;">
                        <%= request.getAttribute("error") %>
                    </div>
                    <% } %>

                        <form action="register" method="post">
                            <div class="form-group">
                                <label for="name">Full Name</label>
                                <input type="text" id="name" name="name" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" id="email" name="email" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" id="password" name="password" required>
                            </div>
                            <!-- Role defaults to CUSTOMER in backend -->
                            <button type="submit" class="btn btn-secondary" style="width: 100%;">Register</button>
                        </form>
                        <div style="text-align: center; margin-top: 15px;">
                            <p style="color: var(--text-secondary);">Already have an account? <a
                                    href="login.jsp">Login</a></p>
                        </div>
            </div>
        </div>
    </body>

    </html>