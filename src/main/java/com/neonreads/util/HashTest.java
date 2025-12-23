package com.neonreads.util;

public class HashTest {
    public static void main(String[] args) {
        String password = "admin123";
        String hash = PasswordUtil.hashPassword(password);
        System.out.println("Hash for 'admin123': " + hash);
    }
}
