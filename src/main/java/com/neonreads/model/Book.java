package com.neonreads.model;

public class Book {
    private int id;
    private String title;
    private String author;
    private double price;
    private int categoryId;
    private String categoryName; // For display purposes
    private String description;
    private int stock;
    private String imageUrl;

    public Book() {}

    public Book(int id, String title, String author, double price, int categoryId, String description, int stock, String imageUrl) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.price = price;
        this.categoryId = categoryId;
        this.description = description;
        this.stock = stock;
        this.imageUrl = imageUrl;
    }
    
    // Constructor without ID
    public Book(String title, String author, double price, int categoryId, String description, int stock, String imageUrl) {
        this.title = title;
        this.author = author;
        this.price = price;
        this.categoryId = categoryId;
        this.description = description;
        this.stock = stock;
        this.imageUrl = imageUrl;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public int getCategoryId() { return categoryId; }
    public void setCategoryId(int categoryId) { this.categoryId = categoryId; }

    public String getCategoryName() { return categoryName; }
    public void setCategoryName(String categoryName) { this.categoryName = categoryName; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public int getStock() { return stock; }
    public void setStock(int stock) { this.stock = stock; }

    public String getImageUrl() { return imageUrl; }
    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }
}
