package com.jobportal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AICareerController {

    // Open Career Assistant page
    @RequestMapping(
            value = "/ai-career",
            method = RequestMethod.GET)
    public String aiCareerPage() {

        return "aiCareerAssistant";
    }


    // Career Chatbot
    @RequestMapping(
            value = "/ai-career-chat",
            method = RequestMethod.POST)
    @ResponseBody
    public String chat(
            @RequestParam("question") String question) {

        if (question == null || question.trim().isEmpty()) {

            return "Please enter a career-related question.";
        }

        String q = question.toLowerCase().trim();


        // -----------------------------------------
        // JAVA DEVELOPER
        // -----------------------------------------

        if (q.contains("java") &&
                (q.contains("skill") ||
                 q.contains("learn") ||
                 q.contains("developer"))) {

            return """
                    <b>Skills required for a Java Developer:</b><br><br>

                    1. Core Java<br>
                    • OOP concepts<br>
                    • Classes and Objects<br>
                    • Inheritance<br>
                    • Polymorphism<br>
                    • Exception Handling<br>
                    • Collections<br>
                    • Multithreading<br><br>

                    2. Database<br>
                    • SQL<br>
                    • MySQL<br>
                    • JDBC<br><br>

                    3. Backend Development<br>
                    • Servlets<br>
                    • Spring Framework<br>
                    • Spring Boot<br>
                    • REST APIs<br><br>

                    4. Tools<br>
                    • Git and GitHub<br>
                    • Maven<br>
                    • Postman<br><br>

                    5. Placement Preparation<br>
                    • Data Structures and Algorithms<br>
                    • Aptitude<br>
                    • Java interview questions<br>
                    • Projects<br><br>

                    <b>Tip:</b> Start with Core Java, then learn SQL and Spring Boot.
                    """;
        }


        // -----------------------------------------
        // BACKEND
        // -----------------------------------------

        if (q.contains("backend") ||
            q.contains("back end")) {

            return """
                    <b>Backend Development Roadmap:</b><br><br>

                    1. Learn Core Java<br>
                    2. Learn OOP concepts<br>
                    3. Learn SQL and MySQL<br>
                    4. Learn JDBC<br>
                    5. Learn Servlets<br>
                    6. Learn Spring Framework<br>
                    7. Learn Spring Boot<br>
                    8. Learn REST APIs<br>
                    9. Learn Git and GitHub<br>
                    10. Practice with Postman<br><br>

                    <b>Project idea:</b><br>
                    Create a Job Portal, Inventory Management System
                    or Student Management System using Spring Boot and MySQL.
                    """;
        }


        // -----------------------------------------
        // SPRING BOOT
        // -----------------------------------------

        if (q.contains("spring boot") ||
            q.contains("springboot")) {

            return """
                    <b>What is Spring Boot?</b><br><br>

                    Spring Boot is a Java framework used to build
                    backend applications and REST APIs more easily.<br><br>

                    <b>Why is it used?</b><br>
                    • Reduces configuration<br>
                    • Easy REST API development<br>
                    • Embedded server support<br>
                    • Easy database integration<br>
                    • Useful for enterprise applications<br><br>

                    <b>Learn these topics:</b><br>
                    Spring Boot → REST API → JPA/Hibernate → MySQL
                    """;
        }


        // -----------------------------------------
        // INTERVIEW
        // -----------------------------------------

        if (q.contains("interview") ||
            q.contains("interview preparation") ||
            q.contains("prepare")) {

            return """
                    <b>Java Interview Preparation:</b><br><br>

                    <b>Step 1:</b> Revise Core Java<br>
                    OOP, Collections, Exception Handling,
                    Strings and Multithreading.<br><br>

                    <b>Step 2:</b> Practice SQL<br>
                    SELECT, JOIN, GROUP BY, Subqueries
                    and basic database concepts.<br><br>

                    <b>Step 3:</b> Learn Spring Boot<br>
                    REST API, Controller, Service, Repository,
                    JPA and Hibernate.<br><br>

                    <b>Step 4:</b> Practice coding<br>
                    Arrays, Strings, Searching, Sorting and basic DSA.<br><br>

                    <b>Step 5:</b> Prepare your projects<br>
                    Be ready to explain your project,
                    technologies used and your contribution.
                    """;
        }


        // -----------------------------------------
        // RESUME
        // -----------------------------------------

        if (q.contains("resume") ||
            q.contains("cv")) {

            return """
                    <b>Software Developer Resume Tips:</b><br><br>

                    • Keep the resume simple and professional.<br>
                    • Add Java, SQL and Spring Boot skills.<br>
                    • Add 2–3 relevant projects.<br>
                    • Add GitHub links for projects.<br>
                    • Mention internships and practical experience.<br>
                    • Add relevant certifications.<br>
                    • Use measurable achievements where possible.<br>
                    • Keep formatting ATS-friendly.<br><br>

                    <b>Important:</b> Your project description should
                    clearly explain the problem, technology and your role.
                    """;
        }


        // -----------------------------------------
        // DATABASE
        // -----------------------------------------

        if (q.contains("database") ||
            q.contains("mysql") ||
            q.contains("sql")) {

            return """
                    <b>Database skills for Backend Development:</b><br><br>

                    Start with <b>SQL</b> and <b>MySQL</b>.<br><br>

                    Learn:<br>
                    • Tables<br>
                    • Primary Key<br>
                    • Foreign Key<br>
                    • SELECT<br>
                    • INSERT<br>
                    • UPDATE<br>
                    • DELETE<br>
                    • JOIN<br>
                    • GROUP BY<br>
                    • Aggregate functions<br>
                    • Subqueries<br><br>

                    After that, learn how Java applications connect
                    to databases using JDBC and JPA/Hibernate.
                    """;
        }


        // -----------------------------------------
        // DSA
        // -----------------------------------------

        if (q.contains("dsa") ||
            q.contains("data structure") ||
            q.contains("algorithm")) {

            return """
                    <b>DSA Preparation Roadmap:</b><br><br>

                    Start with:<br>
                    1. Arrays<br>
                    2. Strings<br>
                    3. Searching<br>
                    4. Sorting<br>
                    5. Linked List<br>
                    6. Stack<br>
                    7. Queue<br>
                    8. HashMap<br>
                    9. Trees<br>
                    10. Basic recursion<br><br>

                    Practice easy problems first and gradually
                    move to medium-level problems.
                    """;
        }


        // -----------------------------------------
        // PLACEMENT
        // -----------------------------------------

        if (q.contains("placement") ||
            q.contains("campus")) {

            return """
                    <b>Campus Placement Preparation:</b><br><br>

                    <b>Technical:</b><br>
                    • Java<br>
                    • SQL<br>
                    • OOP<br>
                    • DBMS<br>
                    • Computer Networks<br>
                    • Operating Systems<br><br>

                    <b>Coding:</b><br>
                    Practice basic DSA problems regularly.<br><br>

                    <b>Aptitude:</b><br>
                    • Quantitative Aptitude<br>
                    • Logical Reasoning<br>
                    • Verbal Ability<br><br>

                    <b>Interview:</b><br>
                    Prepare your introduction, projects,
                    technical questions and HR questions.
                    """;
        }


        // -----------------------------------------
        // GITHUB
        // -----------------------------------------

        if (q.contains("github") ||
            q.contains("git")) {

            return """
                    <b>Git and GitHub are important for developers.</b><br><br>

                    Learn these basic commands:<br>
                    • git init<br>
                    • git add<br>
                    • git commit<br>
                    • git status<br>
                    • git branch<br>
                    • git push<br>
                    • git pull<br><br>

                    Keep your projects on GitHub so recruiters
                    can see your practical work.
                    """;
        }


        // -----------------------------------------
        // JOB
        // -----------------------------------------

        if (q.contains("job") ||
            q.contains("career") ||
            q.contains("career advice")) {

            return """
                    <b>Software Developer Career Roadmap:</b><br><br>

                    Core Java<br>
                    ↓<br>
                    SQL / MySQL<br>
                    ↓<br>
                    Git & GitHub<br>
                    ↓<br>
                    Spring Boot<br>
                    ↓<br>
                    REST API<br>
                    ↓<br>
                    Projects<br>
                    ↓<br>
                    Internship<br>
                    ↓<br>
                    Interview Preparation<br>
                    ↓<br>
                    Software Developer Job
                    """;
        }


        // -----------------------------------------
        // GREETING
        // -----------------------------------------

        if (q.equals("hi") ||
            q.equals("hello") ||
            q.equals("hey")) {

            return """
                    <b>Hello! 👋</b><br><br>

                    I am your Career Assistant.<br><br>

                    You can ask me about:<br>
                    • Java skills<br>
                    • Backend development<br>
                    • Spring Boot<br>
                    • DSA<br>
                    • SQL<br>
                    • Resume<br>
                    • Interviews<br>
                    • Placements<br>
                    • GitHub<br>
                    """;
        }


        // -----------------------------------------
        // DEFAULT RESPONSE
        // -----------------------------------------

        return """
                <b>I can help you with your career preparation.</b><br><br>

                Try asking me questions about:<br>
                • Java Developer skills<br>
                • Backend Development<br>
                • Spring Boot<br>
                • Java Interview Preparation<br>
                • Resume improvement<br>
                • SQL / MySQL<br>
                • DSA<br>
                • Campus Placements<br>
                • Git and GitHub<br><br>

                <b>Example:</b><br>
                What skills are required to become a Java Developer?
                """;
    }
}