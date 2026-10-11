package com.jobportal.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.jobportal.entity.PlacementQuestion;

@Repository
public class PlacementQuestionDao {

    private final String URL =
            "jdbc:mysql://localhost:3306/jobportal";

    private final String USER =
            "root";

    private final String PASSWORD =
            "shital123";


    // =====================================================
    // DATABASE CONNECTION
    // =====================================================

    private Connection getConnection() throws Exception {

        Class.forName(
                "com.mysql.cj.jdbc.Driver"
        );

        return DriverManager.getConnection(
                URL,
                USER,
                PASSWORD
        );
    }


    // =====================================================
    // ADD QUESTION
    // =====================================================

    public boolean addQuestion(
            PlacementQuestion question) {

        String sql =
                "INSERT INTO placement_questions " +
                "(drive_id, category, question) " +
                "VALUES (?, ?, ?)";


        try (

                Connection con =
                        getConnection();

                PreparedStatement ps =
                        con.prepareStatement(sql)

        ) {

            ps.setInt(
                    1,
                    question.getDriveId()
            );

            ps.setString(
                    2,
                    question.getCategory()
            );

            ps.setString(
                    3,
                    question.getQuestion()
            );


            return ps.executeUpdate() > 0;


        } catch (Exception e) {

            System.out.println(
                    "ADD QUESTION ERROR:"
            );

            e.printStackTrace();

            return false;
        }
    }


    // =====================================================
    // GET QUESTIONS BY DRIVE ID
    // =====================================================

    public List<PlacementQuestion>
    getQuestionsByDriveId(int driveId) {

        List<PlacementQuestion> list =
                new ArrayList<>();


        String sql =
                "SELECT * FROM placement_questions " +
                "WHERE drive_id = ? " +
                "ORDER BY question_id ASC";


        try (

                Connection con =
                        getConnection();

                PreparedStatement ps =
                        con.prepareStatement(sql)

        ) {

            ps.setInt(
                    1,
                    driveId
            );


            try (
                    ResultSet rs =
                            ps.executeQuery()
            ) {

                while (rs.next()) {

                    PlacementQuestion question =
                            new PlacementQuestion();


                    question.setQuestionId(
                            rs.getInt(
                                    "question_id"
                            )
                    );


                    question.setDriveId(
                            rs.getInt(
                                    "drive_id"
                            )
                    );


                    question.setCategory(
                            rs.getString(
                                    "category"
                            )
                    );


                    question.setQuestion(
                            rs.getString(
                                    "question"
                            )
                    );


                    list.add(question);
                }
            }


        } catch (Exception e) {

            System.out.println(
                    "GET QUESTIONS ERROR:"
            );

            e.printStackTrace();
        }


        return list;
    }

}