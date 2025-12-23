<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>NeonReads - Checkout</title>
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <header>
            <div class="logo">NeonReads</div>
        </header>

        <div class="container">
            <div class="form-container">
                <h2 style="text-align: center; color: var(--neon-blue); margin-bottom: 20px;">Confirm Order</h2>
                <p style="text-align: center; margin-bottom: 20px; color: var(--text-secondary);">Please confirm your
                    shipping details.</p>

                <form action="cart" method="post">
                    <input type="hidden" name="action" value="confirm_order">

                    <div class="form-group">
                        <label>Full Name</label>
                        <input type="text" name="name" required placeholder="Enter your name">
                    </div>

                    <div class="form-group">
                        <label>Address</label>
                        <textarea name="address" rows="3" required placeholder="Shipping address"></textarea>
                    </div>

                    <div class="form-group">
                        <label>Payment Method</label>
                        <select name="payment">
                            <option value="cod">Cash on Delivery</option>
                            <option value="upi">UPI / Card</option>
                        </select>
                    </div>

                    <div style="display: flex; gap: 10px;">
                        <a href="cart" class="btn btn-secondary" style="flex: 1; text-align: center;">Back to Cart</a>
                        <button type="submit" class="btn" style="flex: 1;">Place Order</button>
                    </div>
                </form>
            </div>
        </div>
    </body>

    </html>