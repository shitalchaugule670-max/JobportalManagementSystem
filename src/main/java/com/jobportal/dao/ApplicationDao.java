package com.jobportal.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jobportal.entity.Application;

@Repository
public class ApplicationDao {

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

    // ================= CHECK ALREADY APPLIED =================

    public boolean alreadyApplied(int userId, int jobId) {

        String sql =
                "SELECT application_id FROM applications " +
                "WHERE user_id=? AND job_id=?";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setInt(1, userId);
            ps.setInt(2, jobId);

            ResultSet rs = ps.executeQuery();

            return rs.next();

        } catch (Exception e) {

            System.out.println("CHECK APPLICATION ERROR:");
            e.printStackTrace();

            return false;
        }
    }

    // ================= APPLY JOB =================

    public boolean applyJob(int userId, int jobId) {

        if (alreadyApplied(userId, jobId)) {

            System.out.println("USER ALREADY APPLIED");

            return false;
        }

        String sql =
                "INSERT INTO applications " +
                "(user_id, job_id, apply_date, status) " +
                "VALUES (?, ?, CURDATE(), 'Pending')";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setInt(1, userId);
            ps.setInt(2, jobId);

            int result = ps.executeUpdate();

            if (result > 0) {

                System.out.println("APPLICATION ADDED SUCCESSFULLY");

                return true;
            }

        } catch (Exception e) {

            System.out.println("APPLY JOB ERROR:");
            e.printStackTrace();
        }

        return false;
    }

    // ================= USER APPLICATIONS =================

    public List<Application> getUserApplications(int userId) {

        List<Application> list = new ArrayList<>();

        String sql =
                "SELECT " +
                "a.application_id, " +
                "a.user_id, " +
                "a.job_id, " +
                "a.apply_date, " +
                "a.status, " +
                "u.name AS user_name, " +
                "u.email AS user_email, " +
                "j.title AS job_title, " +
                "j.company " +
                "FROM applications a " +
                "JOIN users u ON a.user_id = u.id " +
                "JOIN jobs1 j ON a.job_id = j.job_id " +
                "WHERE a.user_id=? " +
                "ORDER BY a.application_id DESC";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Application app = new Application();

                app.setApplicationId(
                        rs.getInt("application_id")
                );

                app.setUserId(
                        rs.getInt("user_id")
                );

                app.setJobId(
                        rs.getInt("job_id")
                );

                app.setUserName(
                        rs.getString("user_name")
                );

                app.setUserEmail(
                        rs.getString("user_email")
                );

                app.setJobTitle(
                        rs.getString("job_title")
                );

                app.setCompany(
                        rs.getString("company")
                );

                app.setApplyDate(
                        rs.getString("apply_date")
                );

                app.setStatus(
                        rs.getString("status")
                );

                list.add(app);
            }

        } catch (Exception e) {

            System.out.println("GET USER APPLICATIONS ERROR:");
            e.printStackTrace();
        }

        return list;
    }

    // ================= ADMIN - ALL APPLICATIONS =================

    public List<Application> getAllApplications() {

        List<Application> list = new ArrayList<>();

        String sql =
                "SELECT " +
                "a.application_id, " +
                "a.user_id, " +
                "a.job_id, " +
                "a.apply_date, " +
                "a.status, " +
                "u.name AS user_name, " +
                "u.email AS user_email, " +
                "j.title AS job_title, " +
                "j.company " +
                "FROM applications a " +
                "JOIN users u ON a.user_id = u.id " +
                "JOIN jobs1 j ON a.job_id = j.job_id " +
                "ORDER BY a.application_id DESC";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()
        ) {

            while (rs.next()) {

                Application app = new Application();

                app.setApplicationId(
                        rs.getInt("application_id")
                );

                app.setUserId(
                        rs.getInt("user_id")
                );

                app.setJobId(
                        rs.getInt("job_id")
                );

                app.setUserName(
                        rs.getString("user_name")
                );

                app.setUserEmail(
                        rs.getString("user_email")
                );

                app.setJobTitle(
                        rs.getString("job_title")
                );

                app.setCompany(
                        rs.getString("company")
                );

                app.setApplyDate(
                        rs.getString("apply_date")
                );

                app.setStatus(
                        rs.getString("status")
                );

                list.add(app);
            }

        } catch (Exception e) {

            System.out.println("GET ALL APPLICATIONS ERROR:");
            e.printStackTrace();
        }

        return list;
    }

    // ================= UPDATE APPLICATION STATUS =================

    public boolean updateStatus(int applicationId, String status) {

        String sql =
                "UPDATE applications " +
                "SET status=? " +
                "WHERE application_id=?";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setString(1, status);
            ps.setInt(2, applicationId);

            return ps.executeUpdate() > 0;

        } catch (Exception e) {

            System.out.println("UPDATE APPLICATION STATUS ERROR:");
            e.printStackTrace();

            return false;
        }
    }
}