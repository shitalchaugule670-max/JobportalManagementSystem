<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Job Portal | Student Dashboard</title>

<style>

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background: #f4f7fb;
    min-height: 100vh;
    color: #222;
}

/* ================= NAVBAR ================= */

.navbar {
    background: white;
    height: 70px;
    padding: 0 40px;

    display: flex;
    align-items: center;
    justify-content: space-between;

    box-shadow: 0 2px 10px rgba(0,0,0,0.08);

    position: sticky;
    top: 0;
    z-index: 100;
}

.logo {
    font-size: 25px;
    font-weight: bold;
    color: #2563eb;
}

.logo span {
    color: #222;
}

.nav-links {
    display: flex;
    align-items: center;
    gap: 28px;
}

.nav-links a {
    text-decoration: none;
    color: #333;
    font-size: 15px;
    font-weight: 500;
}

.nav-links a:hover {
    color: #2563eb;
}

.logout-btn {
    background: #ef4444;
    color: white !important;
    padding: 10px 18px;
    border-radius: 7px;
}

.logout-btn:hover {
    background: #dc2626;
}

/* ================= MAIN ================= */

.container {
    width: 90%;
    max-width: 1200px;
    margin: 35px auto;
}

/* ================= WELCOME ================= */

.welcome-box {
    background: linear-gradient(135deg, #2563eb, #3949ab);
    color: white;

    padding: 32px;
    border-radius: 15px;

    margin-bottom: 30px;

    box-shadow: 0 8px 25px rgba(37,99,235,0.20);
}

.welcome-box h1 {
    font-size: 30px;
    margin-bottom: 10px;
}

.welcome-box p {
    font-size: 16px;
}

/* ================= SEARCH ================= */

.search-box {
    background: white;
    padding: 20px;

    border-radius: 12px;

    display: flex;
    gap: 10px;

    box-shadow: 0 3px 15px rgba(0,0,0,0.07);

    margin-bottom: 30px;
}

.search-box input {
    flex: 1;

    padding: 14px;

    border: 1px solid #ccc;
    border-radius: 8px;

    font-size: 15px;
    outline: none;
}

.search-box input:focus {
    border-color: #3949ab;
}

.search-btn {
    border: none;

    background: #3949ab;
    color: white;

    padding: 0 25px;

    border-radius: 8px;

    cursor: pointer;
}

.search-btn:hover {
    background: #1a237e;
}

/* ================= SECTION ================= */

.section-title {
    margin-bottom: 20px;
    font-size: 23px;
    color: #222;
}

/* ================= CARDS ================= */

.cards {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 22px;
}

.card {
    background: white;

    padding: 25px;

    border-radius: 13px;

    box-shadow: 0 3px 15px rgba(0,0,0,0.07);

    transition: 0.3s;
}

.card:hover {
    transform: translateY(-5px);
}

.card-icon {
    width: 52px;
    height: 52px;

    background: #eef2ff;

    border-radius: 12px;

    display: flex;
    align-items: center;
    justify-content: center;

    font-size: 25px;

    margin-bottom: 15px;
}

.card h3 {
    margin-bottom: 8px;
}

.card p {
    color: #666;
    line-height: 1.6;
    font-size: 14px;

    margin-bottom: 18px;
}

.card-btn {
    display: inline-block;

    background: #3949ab;
    color: white;

    text-decoration: none;

    padding: 10px 17px;

    border-radius: 7px;

    font-size: 14px;
}

.card-btn:hover {
    background: #1a237e;
}

/* ================= QUICK ACTIONS ================= */

.quick-section {
    margin-top: 35px;
}

.quick-actions {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}

.quick-card {
    background: white;

    padding: 22px;

    border-radius: 12px;

    box-shadow: 0 3px 15px rgba(0,0,0,0.07);

    text-decoration: none;

    color: #222;

    transition: 0.3s;
}

.quick-card:hover {
    transform: translateY(-4px);
    color: #3949ab;
}

.quick-card h3 {
    margin-bottom: 8px;
}

.quick-card p {
    color: #666;
    font-size: 14px;
}

/* ================= FOOTER ================= */

.footer {
    margin-top: 60px;

    background: #111827;

    color: #ddd;

    text-align: center;

    padding: 25px;

    font-size: 14px;
}

/* ================================================= */
/*              FLOATING AI BUTTON                  */
/* ================================================= */

.ai-floating-btn {

    position: fixed;

    right: 25px;
    bottom: 25px;

    width: 62px;
    height: 62px;

    border-radius: 50%;

    background: linear-gradient(135deg, #3949ab, #1a237e);

    display: flex;

    align-items: center;
    justify-content: center;

    text-decoration: none;

    font-size: 29px;

    box-shadow: 0 8px 25px rgba(0,0,0,0.25);

    z-index: 9999;

    transition: all 0.3s ease;
}

.ai-floating-btn:hover {

    transform: scale(1.1);

    box-shadow: 0 12px 30px rgba(0,0,0,0.30);
}

/* ================= AI TOOLTIP ================= */

.ai-tooltip {

    position: absolute;

    right: 75px;

    top: 50%;

    transform: translateY(-50%);

    background: #222;

    color: white;

    padding: 8px 12px;

    border-radius: 6px;

    font-size: 13px;

    white-space: nowrap;

    opacity: 0;

    visibility: hidden;

    transition: 0.3s;
}

.ai-floating-btn:hover .ai-tooltip {

    opacity: 1;

    visibility: visible;
}

/* ================= MOBILE ================= */

@media(max-width: 900px) {

    .cards {
        grid-template-columns: repeat(2, 1fr);
    }

    .quick-actions {
        grid-template-columns: repeat(2, 1fr);
    }

}

@media(max-width: 650px) {

    .navbar {
        padding: 0 18px;
    }

    .nav-links {
        gap: 10px;
    }

    .nav-links a:not(.logout-btn) {
        display: none;
    }

    .container {
        width: 94%;
    }

    .cards {
        grid-template-columns: 1fr;
    }

    .quick-actions {
        grid-template-columns: 1fr;
    }

    .search-box {
        flex-direction: column;
    }

    .search-btn {
        padding: 13px;
    }

    .welcome-box h1 {
        font-size: 24px;
    }

    .ai-floating-btn {
        width: 55px;
        height: 55px;

        right: 18px;
        bottom: 18px;

        font-size: 25px;
    }

}

</style>

</head>

<body>


<!-- ================= NAVBAR ================= -->

<div class="navbar">

    <div class="logo">
        Job<span>Portal</span>
    </div>

    <div class="nav-links">

        <a href="${pageContext.request.contextPath}/jobs">
            Home
        </a>

        <a href="${pageContext.request.contextPath}/jobs">
            Jobs
        </a>

        <a href="${pageContext.request.contextPath}/myApplications">
            Applications
        </a>

        <a href="${pageContext.request.contextPath}/profile">
            Profile
        </a>

        <a href="${pageContext.request.contextPath}/logout"
           class="logout-btn">
            Logout
        </a>

    </div>

</div>


<!-- ================= MAIN ================= -->

<div class="container">


    <!-- WELCOME -->

    <div class="welcome-box">

        <h1>
            Welcome to Your Dashboard 👋
        </h1>

        <p>
            Find the right job, manage your applications and build your career.
        </p>

    </div>


    <!-- SEARCH -->

    <div class="search-box">

        <input
            type="text"
            placeholder="Search jobs by title, skills or location...">

        <button class="search-btn">
            🔍 Search
        </button>

    </div>


    <!-- CARDS -->

    <h2 class="section-title">
        Quick Overview
    </h2>


    <div class="cards">


        <!-- JOBS -->

        <div class="card">

            <div class="card-icon">
                💼
            </div>

            <h3>
                Find Jobs
            </h3>

            <p>
                Explore the latest job opportunities and find a job that matches your skills.
            </p>

            <a
                href="${pageContext.request.contextPath}/jobs"
                class="card-btn">

                View Jobs

            </a>

        </div>


        <!-- APPLICATIONS -->

        <div class="card">

            <div class="card-icon">
                📄
            </div>

            <h3>
                My Applications
            </h3>

            <p>
                Track your submitted applications and check their current status.
            </p>

            <a
                href="${pageContext.request.contextPath}/myApplications"
                class="card-btn">

                View Applications

            </a>

        </div>


        <!-- PROFILE -->

        <div class="card">

            <div class="card-icon">
                👤
            </div>

            <h3>
                My Profile
            </h3>

            <p>
                Update your personal information, skills and professional profile.
            </p>

            <a
                href="${pageContext.request.contextPath}/profile"
                class="card-btn">

                View Profile

            </a>

        </div>


    </div>


    <!-- QUICK ACTIONS -->

    <div class="quick-section">

        <h2 class="section-title">
            Quick Actions
        </h2>


        <div class="quick-actions">


            <a
                href="${pageContext.request.contextPath}/jobs"
                class="quick-card">

                <h3>
                    🔎 Browse Jobs
                </h3>

                <p>
                    Search and apply for suitable job opportunities.
                </p>

            </a>


            <a
                href="${pageContext.request.contextPath}/myApplications"
                class="quick-card">

                <h3>
                    📋 Track Applications
                </h3>

                <p>
                    Check the status of your job applications.
                </p>

            </a>


            <a
                href="${pageContext.request.contextPath}/profile"
                class="quick-card">

                <h3>
                    ✏️ Update Profile
                </h3>

                <p>
                    Keep your profile and skills up to date.
                </p>

            </a>


        </div>

    </div>

</div>


<!-- ================================================= -->
<!--              FLOATING AI BUTTON                  -->
<!-- ================================================= -->

<a
    href="${pageContext.request.contextPath}/ai-career"
    class="ai-floating-btn"
    title="AI Career Assistant">

    🤖

    <span class="ai-tooltip">
        AI Career Assistant
    </span>

</a>


<!-- ================= FOOTER ================= -->

<div class="footer">

    © 2026 Job Portal Management System.
    All Rights Reserved.

</div>


</body>

</html>