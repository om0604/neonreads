<%@ page import="java.util.List" %>
    <%@ page import="com.neonreads.model.CartItem" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <!DOCTYPE html>
            <html>

            <head>
                <title>NeonReads - Cart</title>
                <link rel="stylesheet" href="css/style.css">
            </head>

            <body>
                <header>
                    <div class="logo">NeonReads</div>
                    <div class="header-actions">
                        <div class="nav-links">
                            <a href="books">Back to Books</a>
                        </div>
                    </div>
                </header>

                <div class="container" style="max-width: 800px; margin-top: 40px;">
                    <h2 style="color: var(--primary-color); margin-bottom: 20px;">Your Shopping Cart</h2>

                    <% List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
                            double total = 0;

                            if (cart != null && !cart.isEmpty()) {
                            %>
                            <div class="table-container">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Book</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% for (CartItem item : cart) { total +=item.getTotalPrice(); %>
                                            <tr>
                                                <td>
                                                    <%= item.getBook().getTitle() %>
                                                </td>
                                                <td>₹<%= item.getBook().getPrice() %>
                                                </td>
                                                <td>
                                                    <a href="cart?action=decrease&id=<%= item.getBook().getId() %>"
                                                        style="color: var(--text-primary); text-decoration: none; padding: 2px 8px; border: 1px solid var(--text-secondary); border-radius: 4px; margin-right: 5px;">-</a>
                                                    <%= item.getQuantity() %>
                                                        <a href="cart?action=increase&id=<%= item.getBook().getId() %>"
                                                            style="color: var(--text-primary); text-decoration: none; padding: 2px 8px; border: 1px solid var(--text-secondary); border-radius: 4px; margin-left: 5px;">+</a>
                                                </td>
                                                <td>₹<%= item.getTotalPrice() %>
                                                </td>
                                                <td>
                                                    <a href="cart?action=remove&id=<%= item.getBook().getId() %>"
                                                        style="color: var(--error-color);">Remove</a>
                                                </td>
                                            </tr>
                                            <% } %>
                                    </tbody>
                                </table>
                            </div>

                            <div style="text-align: right; margin-top: 20px;">
                                <h3 style="color: var(--text-primary);">Total: <span
                                        style="color: var(--secondary-color);">₹<%= total %></span></h3>
                                <a href="cart?action=checkout" class="btn" style="margin-top: 15px;">Proceed to
                                    Checkout</a>
                            </div>
                            <% } else { %>
                                <div style="text-align: center; padding: 40px; color: var(--text-secondary);">
                                    <h3>Your cart is empty</h3>
                                    <a href="books" class="btn" style="margin-top: 20px;">Browse Books</a>
                                </div>
                                <% } %>
                </div>
            </body>

            </html>