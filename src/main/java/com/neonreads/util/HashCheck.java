package com.neonreads.util;

public class HashCheck {
    public static void main(String[] args) {
        System.out.println("admin123: " + PasswordUtil.hashPassword("admin123"));
        System.out.println("user123: " + PasswordUtil.hashPassword("user123"));
    }
}
