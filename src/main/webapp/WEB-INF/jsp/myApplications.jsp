```jsp
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
    uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>My Applications | Job Portal</title>

<style>

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: #f4f7f9;
    min-height: 100vh;
    color: #1e293b;
}

/* ================= HEADER ================= */

.header {
    background: #0f172a;
    padding: 18px 6%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 4px 20px rgba(15, 23, 42, 0.18);
}

.logo {
    color: white;
    font-size: 24px;
    font-weight: 700;
    letter-spacing: 0.3px;
}

.logo span {
    color: #2dd4bf;
}

.nav {
    display: flex;
    align-items: center;
    gap: 8px;
}

.nav a {
    color: #cbd5e1;
    text-decoration: none;
    padding: 9px 15px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: 600;
    transition: 0.3s;
}

.nav a:hover {
    background: #1e293b;
    color: #2dd4bf;
}

.nav .active {
    background: #0f766e;
    color: white;
}

/* ================= MAIN ================= */

.container {
    width: 90%;
    max-width: 1100px;
    margin: 45px auto;
}

/* ================= PAGE TITLE ================= */

.page-header {
    text-align: center;
    margin-bottom: 35px;
}

.page-header .icon {
    width: 64px;
    height: 64px;
    margin: 0 auto 15px;
    border-radius: 18px;
    background: #ccfbf1;
    color: #0f766e;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 30px;
}

.page-header h1 {
    color: #0f172a;
    font-size: 32px;
    margin-bottom: 8px;
}

.page-header p {
    color: #64748b;
    font-size: 15px;
}

/* ================= APPLICATION CARD ================= */

.card {
    background: white;
    border-radius: 18px;
    padding: 28px 30px;
    margin-bottom: 22px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.07);
    transition: 0.3s ease;
    position: relative;
    overflow: hidden;
}

.card::before {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    width: 5px;
    height: 100%;
    background: #0f766e;
}

.card:hover {
    transform: translateY(-4px);
    box-shadow: 0 15px 35px rgba(15, 23, 42, 0.12);
}

/* ================= JOB TITLE ================= */

.card h2 {
    color: #0f172a;
    font-size: 22px;
    margin-bottom: 22px;
    padding-left: 5px;
}

.card h2::first-letter {
    color: #0f766e;
}

/* ================= INFORMATION ================= */

.info-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 14px;
}

.info {
    background: #f8fafc;
    border: 1px solid #e2e8f0;
    border-radius: 10px;
    padding: 13px 15px;
    color: #475569;
    font-size: 14px;
}

.info b {
    color: #334155;
    margin-right: 5px;
}

.info:hover {
    background: #f0fdfa;
    border-color: #99f6e4;
}

/* ================= STATUS ================= */

.status-row {
    margin-top: 22px;
    padding-top: 18px;
    border-top: 1px solid #e2e8f0;
}

.status-label {
    color: #64748b;
    font-size: 13px;
    font-weight: 600;
    margin-right: 8px;
}

.status {
    display: inline-block;
    padding: 8px 16px;
    border-radius: 20px;
    background: #ccfbf1;
    color: #0f766e;
    font-size: 13px;
    font-weight: 700;
}

/* ================= NO DATA ================= */

.no-data {
    background: white;
    padding: 60px 30px;
    border-radius: 18px;
    text-align: center;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.06);
}

.no-data .empty-icon {
    font-size: 50px;
    margin-bottom: 15px;
}

.no-data h2 {
    color: #334155;
    margin-bottom: 10px;
}

.no-data p {
    color: #64748b;
}

/* ================= BACK BUTTON ================= */

.back {
    display: block;
    width: fit-content;
    margin: 35px auto 10px;
    background: #0f766e;
    color: white;
    padding: 12px 24px;
    text-decoration: none;
    border-radius: 9px;
    font-weight: 700;
    font-size: 14px;
    transition: 0.3s;
    box-shadow: 0 5px 15px rgba(15, 118, 110, 0.20);
}

.back:hover {
    background: #115e59;
    transform: translateY(-2px);
}

/* ================= RESPONSIVE ================= */

@media (max-width: 700px) {

    .header {
        flex-direction: column;
        gap: 15px;
        padding: 18px 20px;
    }

    .nav {
        flex-wrap: wrap;
        justify-content: center;
    }

    .container {
        width: 92%;
        margin: 30px auto;
    }

    .page-header h1 {
        font-size: 27px;
    }

    .info-grid {
        grid-template-columns: 1fr;
    }

    .card {
        padding: 23px 20px;
    }
}

</style>

</head>

<body>

<!-- ================= HEADER ================= -->

<div class="header">

    <div class="logo">
        💼 Job<span>Portal</span>
    </div>

    <div class="nav">

        <a href="${pageContext.request.contextPath}/dashboard">
            🏠 Dashboard
        </a>

        <a href="${pageContext.request.contextPath}/jobs">
            💼 Jobs
        </a>

        <a class="active"
           href="${pageContext.request.contextPath}/myApplications">
            📄 Applications
        </a>

        <a href="${pageContext.request.contextPath}/profile">
            👤 Profile
        </a>

        <a href="${pageContext.request.contextPath}/logout">
            🚪 Logout
        </a>

    </div>

</div>


<!-- ================= MAIN ================= -->

<div class="container">

    <div class="page-header">

        <div class="icon">
            📄
        </div>

        <h1>My Applications</h1>

        <p>
            Track the jobs you have applied for and check your application status.
        </p>

    </div>


    <!-- ================= APPLICATION LIST ================= -->

    <c:forEach
        var="app"
        items="${applications}">

        <div class="card">

            <h2>
                💼 ${app.jobTitle}
            </h2>


            <div class="info-grid">

                <div class="info">
                    🏢 <b>Company:</b>
                    ${app.company}
                </div>

                <div class="info">
                    👤 <b>Applicant:</b>
                    ${app.userName}
                </div>

                <div class="info">
                    📧 <b>Email:</b>
                    ${app.userEmail}
                </div>

                <div class="info">
                    📅 <b>Applied Date:</b>
                    ${app.applyDate}
                </div>

            </div>


            <div class="status-row">

                <span class="status-label">
                    Application Status:
                </span>

                <span class="status">
                    ${app.status}
                </span>

            </div>

        </div>

    </c:forEach>


    <!-- ================= NO APPLICATION ================= -->

    <c:if test="${empty applications}">

        <div class="no-data">

            <div class="empty-icon">
                📭
            </div>

            <h2>
                No Applications Yet
            </h2>

            <p>
                You have not applied for any job yet.
                Explore available jobs and start your career journey.
            </p>

        </div>

    </c:if>


    <!-- ================= BACK ================= -->

    <a
        class="back"
        href="${pageContext.request.contextPath}/jobs">

        ← Back to Jobs

    </a>

</div>

</body>

</html>

