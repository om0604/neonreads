# NeonReads

NeonReads is a modern, full-stack Java Web Application for browsing and purchasing books.

## Features
- **Responsive Grid Layout**: 4-column display for books.
- **Categorization**: Filter books by Fiction, Non-Fiction, Science, etc.
- **Shopping Cart**: Add items, adjust quantities, and checkout.
- **Admin Dashboard**: Manage inventory and seed database.
- **User Authentication**: Register and Login functionality.

## Tech Stack
- **Backend**: Java Servlets, JSP, JDBC
- **Frontend**: HTML5, CSS3, JavaScript
- **Database**: MySQL
- **Build Tool**: Maven
- **Server**: Apache Tomcat 9+

## Setup
1. Clone the repository.
2. Import `src/main/resources/db.sql` into your MySQL database `neonreads_db`.
3. Configure `DBConnection.java` with your DB credentials.
4. Deploy to Tomcat server.
5. Access at `http://localhost:8080/NeonReads`.

## Default Credentials
- **Admin**: `admin@neonreads.com` / `admin123`
- **Customer**: `john@example.com` / `user123`
