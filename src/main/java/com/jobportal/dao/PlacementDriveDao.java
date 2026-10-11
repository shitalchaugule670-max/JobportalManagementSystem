package com.jobportal.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jobportal.entity.PlacementDrive;

@Repository
public class PlacementDriveDao {

    private final String URL =
            "jdbc:mysql://localhost:3306/jobportal";

    private final String USER = "root";

    private final String PASSWORD = "shital123";

    private Connection getConnection() throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");

        return DriverManager.getConnection(
                URL,
                USER,
                PASSWORD
        );
    }

    // ================= GET ALL DRIVES =================

    public List<PlacementDrive> getAllDrives() {

        List<PlacementDrive> list = new ArrayList<>();

        String sql =
                "SELECT * FROM placement_drives " +
                "ORDER BY drive_id DESC";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()
        ) {

            while (rs.next()) {

                PlacementDrive drive =
                        new PlacementDrive();

                drive.setDriveId(
                        rs.getInt("drive_id")
                );

                drive.setCompanyName(
                        rs.getString("company_name")
                );

                drive.setDriveYear(
                        rs.getInt("drive_year")
                );

                drive.setJobRole(
                        rs.getString("job_role")
                );

                drive.setPackageAmount(
                        rs.getString("package")
                );

                drive.setStudentsAppeared(
                        rs.getInt("students_appeared")
                );

                drive.setStudentsSelected(
                        rs.getInt("students_selected")
                );

                drive.setDriveDate(
                        rs.getString("drive_date")
                );

                drive.setDescription(
                        rs.getString("description")
                );

                list.add(drive);
            }

        } catch (Exception e) {

            System.out.println("GET PLACEMENT DRIVES ERROR:");
            e.printStackTrace();
        }

        return list;
    }

    // ================= ADD DRIVE =================

    public boolean addDrive(PlacementDrive drive) {

        String sql =
                "INSERT INTO placement_drives " +
                "(company_name, drive_year, job_role, package, " +
                "students_appeared, students_selected, drive_date, description) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setString(
                    1,
                    drive.getCompanyName()
            );

            ps.setInt(
                    2,
                    drive.getDriveYear()
            );

            ps.setString(
                    3,
                    drive.getJobRole()
            );

            ps.setString(
                    4,
                    drive.getPackageAmount()
            );

            ps.setInt(
                    5,
                    drive.getStudentsAppeared()
            );

            ps.setInt(
                    6,
                    drive.getStudentsSelected()
            );

            ps.setString(
                    7,
                    drive.getDriveDate()
            );

            ps.setString(
                    8,
                    drive.getDescription()
            );

            return ps.executeUpdate() > 0;

        } catch (Exception e) {

            System.out.println("ADD PLACEMENT DRIVE ERROR:");
            e.printStackTrace();

            return false;
        }
    }
}