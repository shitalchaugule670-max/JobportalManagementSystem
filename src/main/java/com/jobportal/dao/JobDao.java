package com.jobportal.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jobportal.entity.Job;

@Repository
public class JobDao {

    private final String URL =
            "jdbc:mysql://localhost:3306/jobportal";

    private final String USER = "root";

    private final String PASSWORD = "shital123";


    // =====================================================
    // DATABASE CONNECTION
    // =====================================================

    private Connection getConnection() throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");

        return DriverManager.getConnection(
                URL,
                USER,
                PASSWORD
        );
    }


    // =====================================================
    // ADD JOB
    // =====================================================

    public boolean addJob(Job job) {

        String sql =
                "INSERT INTO jobs1 " +
                "(title, company, location, salary, description, skills, last_date) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setString(1, job.getTitle());
            ps.setString(2, job.getCompany());
            ps.setString(3, job.getLocation());
            ps.setString(4, job.getSalary());
            ps.setString(5, job.getDescription());
            ps.setString(6, job.getSkills());
            ps.setString(7, job.getLastDate());

            int rows = ps.executeUpdate();

            System.out.println("ADD JOB - Rows inserted: " + rows);

            return rows > 0;

        } catch (Exception e) {

            System.out.println("========== ADD JOB ERROR ==========");
            e.printStackTrace();

            return false;
        }
    }


    // =====================================================
    // GET ALL JOBS
    // =====================================================

    public List<Job> getAllJobs() {

        List<Job> list = new ArrayList<>();

        String sql =
                "SELECT * FROM jobs1 ORDER BY job_id DESC";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()
        ) {

            while (rs.next()) {

                Job job = mapJob(rs);

                list.add(job);
            }

        } catch (Exception e) {

            System.out.println("========== GET ALL JOBS ERROR ==========");
            e.printStackTrace();
        }

        return list;
    }


    // =====================================================
    // SEARCH JOBS
    // =====================================================

    public List<Job> searchJobs(String keyword) {

        List<Job> list = new ArrayList<>();

        String sql =
                "SELECT * FROM jobs1 " +
                "WHERE title LIKE ? " +
                "OR company LIKE ? " +
                "OR location LIKE ? " +
                "OR skills LIKE ? " +
                "ORDER BY job_id DESC";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            String key = "%" + keyword.trim() + "%";

            ps.setString(1, key);
            ps.setString(2, key);
            ps.setString(3, key);
            ps.setString(4, key);

            try (ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {

                    Job job = mapJob(rs);

                    list.add(job);
                }
            }

        } catch (Exception e) {

            System.out.println("========== SEARCH JOB ERROR ==========");
            e.printStackTrace();
        }

        return list;
    }


    // =====================================================
    // GET JOB BY ID
    // =====================================================

    public Job getJobById(int id) {

        String sql =
                "SELECT * FROM jobs1 WHERE job_id = ?";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery()) {

                if (rs.next()) {

                    return mapJob(rs);
                }
            }

        } catch (Exception e) {

            System.out.println("========== GET JOB BY ID ERROR ==========");
            e.printStackTrace();
        }

        return null;
    }


    // =====================================================
    // UPDATE JOB
    // =====================================================

    public boolean updateJob(Job job) {

        String sql =
                "UPDATE jobs1 SET " +
                "title=?, " +
                "company=?, " +
                "location=?, " +
                "salary=?, " +
                "description=?, " +
                "skills=?, " +
                "last_date=? " +
                "WHERE job_id=?";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setString(1, job.getTitle());
            ps.setString(2, job.getCompany());
            ps.setString(3, job.getLocation());
            ps.setString(4, job.getSalary());
            ps.setString(5, job.getDescription());
            ps.setString(6, job.getSkills());
            ps.setString(7, job.getLastDate());
            ps.setInt(8, job.getJobId());

            int rows = ps.executeUpdate();

            System.out.println("UPDATE JOB - Rows updated: " + rows);

            return rows > 0;

        } catch (Exception e) {

            System.out.println("========== UPDATE JOB ERROR ==========");
            e.printStackTrace();

            return false;
        }
    }


    // =====================================================
    // DELETE JOB
    // =====================================================

    public boolean deleteJob(int id) {

        String sql =
                "DELETE FROM jobs1 WHERE job_id = ?";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setInt(1, id);

            int rows = ps.executeUpdate();

            System.out.println("DELETE JOB - Rows deleted: " + rows);

            return rows > 0;

        } catch (Exception e) {

            System.out.println("========== DELETE JOB ERROR ==========");
            e.printStackTrace();

            return false;
        }
    }


    // =====================================================
    // COMMON JOB MAPPER
    // =====================================================

    private Job mapJob(ResultSet rs) throws Exception {

        Job job = new Job();

        job.setJobId(
                rs.getInt("job_id")
        );

        job.setTitle(
                rs.getString("title")
        );

        job.setCompany(
                rs.getString("company")
        );

        job.setLocation(
                rs.getString("location")
        );

        job.setSalary(
                rs.getString("salary")
        );

        job.setDescription(
                rs.getString("description")
        );

        job.setSkills(
                rs.getString("skills")
        );

        job.setLastDate(
                rs.getString("last_date")
        );

        return job;
    }
}