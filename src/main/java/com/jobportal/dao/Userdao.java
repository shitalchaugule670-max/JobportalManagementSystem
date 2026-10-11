package com.jobportal.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.jobportal.entity.User;

@Repository
public class Userdao {

    private final String URL =
            "jdbc:mysql://localhost:3306/jobportal";

    private final String USER = "root";

    private final String PASSWORD = "shital123";

    // ================= DATABASE CONNECTION =================

    private Connection getConnection() throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");

        return DriverManager.getConnection(
                URL,
                USER,
                PASSWORD
        );
    }

    // ================= LOGIN =================

    public User login(String email, String password) {

        String sql =
                "SELECT * FROM users WHERE email=? AND password=?";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                User user = new User();

                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setPhone(rs.getString("phone"));
                user.setRole(rs.getString("role"));

                System.out.println("LOGIN SUCCESS");
                System.out.println("NAME : " + user.getName());
                System.out.println("ROLE : " + user.getRole());

                return user;
            }

            System.out.println("USER NOT FOUND");

        } catch (Exception e) {

            System.out.println("LOGIN ERROR:");
            e.printStackTrace();
        }

        return null;
    }

    // ================= REGISTER =================

    public boolean register(String name, String email,
                            String password) {

        String sql =
                "INSERT INTO users(name,email,password,phone,role) "
                + "VALUES(?,?,?,?,?)";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, "");
            ps.setString(5, "USER");

            int result = ps.executeUpdate();

            return result > 0;

        } catch (Exception e) {

            System.out.println("REGISTER ERROR:");
            e.printStackTrace();

            return false;
        }
    }
}