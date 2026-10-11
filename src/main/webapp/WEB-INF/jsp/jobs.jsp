<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Available Jobs | Job Portal</title>

<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: linear-gradient(135deg, #eef2ff, #f8fafc);
    min-height: 100vh;
    color: #1e293b;
}

/* ================= HEADER ================= */

.header {
    background: rgba(255,255,255,0.96);
    padding: 18px 6%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 4px 20px rgba(15,23,42,0.08);
    position: sticky;
    top: 0;
    z-index: 100;
}

.header h1 {
    font-size: 25px;
    color: #312e81;
    letter-spacing: 0.3px;
}

.nav {
    display: flex;
    align-items: center;
    gap: 8px;
}

.nav a {
    text-decoration: none;
    color: #475569;
    font-size: 14px;
    font-weight: 600;
    padding: 10px 14px;
    border-radius: 8px;
    transition: 0.25s;
}

.nav a:hover {
    color: #4338ca;
    background: #eef2ff;
}

/* ================= MAIN ================= */

.container {
    width: 90%;
    max-width: 1100px;
    margin: 45px auto;
}

/* ================= TITLE ================= */

.title {
    text-align: center;
    margin-bottom: 30px;
}

.title h2 {
    font-size: 36px;
    color: #1e1b4b;
    margin-bottom: 8px;
}

.title p {
    color: #64748b;
    font-size: 16px;
}

/* ================= SEARCH ================= */

.search-box {
    background: white;
    padding: 10px;
    border-radius: 14px;
    display: flex;
    gap: 10px;
    margin-bottom: 32px;
    box-shadow: 0 8px 30px rgba(15,23,42,0.08);
    border: 1px solid #e2e8f0;
}

.search-box input {
    flex: 1;
    padding: 14px 16px;
    border: none;
    outline: none;
    border-radius: 10px;
    font-size: 15px;
    color: #334155;
    background: #f8fafc;
}

.search-box input:focus {
    box-shadow: 0 0 0 2px #c7d2fe;
}

.search-box button {
    padding: 0 25px;
    border: none;
    border-radius: 10px;
    background: #4f46e5;
    color: white;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.25s;
}

.search-box button:hover {
    background: #3730a3;
    transform: translateY(-1px);
}

/* ================= JOB CARD ================= */

.job-card {
    background: rgba(255,255,255,0.98);
    padding: 28px;
    margin-bottom: 20px;
    border-radius: 18px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 7px 25px rgba(15,23,42,0.07);
    transition: 0.3s ease;
    position: relative;
    overflow: hidden;
}

.job-card::before {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    width: 5px;
    height: 100%;
    background: linear-gradient(180deg, #4f46e5, #7c3aed);
}

.job-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 35px rgba(15,23,42,0.12);
    border-color: #c7d2fe;
}

.job-card h3 {
    margin-bottom: 18px;
    color: #312e81;
    font-size: 24px;
    padding-left: 4px;
}

.job-info {
    margin: 11px 0;
    color: #64748b;
    font-size: 15px;
}

.job-info b {
    color: #334155;
}

.skills {
    background: #eef2ff;
    color: #4338ca;
    padding: 12px 15px;
    border-radius: 9px;
    margin-top: 17px;
    font-size: 14px;
    border: 1px solid #e0e7ff;
}

.details-btn {
    display: inline-block;
    margin-top: 20px;
    padding: 11px 20px;
    background: #4f46e5;
    color: white;
    text-decoration: none;
    border-radius: 9px;
    font-size: 14px;
    font-weight: 600;
    transition: 0.25s;
}

.details-btn:hover {
    background: #3730a3;
    transform: translateX(3px);
}

/* ================= NO JOB ================= */

.no-job {
    background: white;
    padding: 55px 30px;
    text-align: center;
    border-radius: 18px;
    color: #64748b;
    box-shadow: 0 8px 25px rgba(15,23,42,0.07);
    border: 1px solid #e2e8f0;
}

.no-job h2 {
    color: #334155;
    margin-bottom: 10px;
}

/* ================= BACK ================= */

.back {
    display: block;
    width: fit-content;
    margin: 30px auto;
    padding: 11px 22px;
    background: white;
    color: #4338ca;
    text-decoration: none;
    border: 1px solid #c7d2fe;
    border-radius: 9px;
    font-weight: 600;
    transition: 0.25s;
}

.back:hover {
    background: #eef2ff;
    transform: translateY(-2px);
}

/* ================= RESPONSIVE ================= */

@media(max-width: 800px) {

    .header {
        flex-direction: column;
        gap: 15px;
    }

    .nav {
        flex-wrap: wrap;
        justify-content: center;
    }

    .title h2 {
        font-size: 30px;
    }
}

@media(max-width: 600px) {

    .container {
        width: 94%;
        margin: 30px auto;
    }

    .search-box {
        flex-direction: column;
        padding: 12px;
    }

    .search-box button {
        padding: 13px;
    }

    .job-card {
        padding: 22px;
    }

    .header {
        padding: 18px;
    }

    .nav a {
        padding: 8px;
        font-size: 13px;
    }
}
</style>

</head>

<body>

<!-- ================= HEADER ================= -->

<div class="header">


<h1>💼 Job Portal</h1>

<div class="nav">

    <a href="${pageContext.request.contextPath}/dashboard">
        🏠 Dashboard
    </a>

    <a href="${pageContext.request.contextPath}/jobs">
        💼 Jobs
    </a>

    <a href="${pageContext.request.contextPath}/myApplications">
        📋 Applications
    </a>

    <a href="${pageContext.request.contextPath}/profile">
        👤 Profile
    </a>

    <a href="${pageContext.request.contextPath}/logout">
        🚪 Logout
    </a>

</div>
```

</div>

<!-- ================= MAIN ================= -->

<div class="container">


<!-- TITLE -->

<div class="title">

    <h2>Available Jobs</h2>

    <p>
        Explore opportunities and find the right job for you
    </p>

</div>


<!-- SEARCH -->

<form class="search-box"
      action="${pageContext.request.contextPath}/jobs"
      method="get">

    <input
        type="text"
        name="keyword"
        value="${keyword}"
        placeholder="🔍 Search by job title, company, location or skills">

    <button type="submit">
        Search
    </button>

</form>


<!-- JOB LIST -->

<c:forEach var="job" items="${jobs}">

    <div class="job-card">

        <h3>
            💼 ${job.title}
        </h3>


        <div class="job-info">

            🏢 <b>Company:</b>
            ${job.company}

        </div>


        <div class="job-info">

            📍 <b>Location:</b>
            ${job.location}

        </div>


        <div class="job-info">

            💰 <b>Salary:</b>
            ${job.salary}

        </div>


        <div class="skills">

            🛠 <b>Required Skills:</b>
            ${job.skills}

        </div>


        <div class="job-info">

            📅 <b>Last Date:</b>
            ${job.lastDate}

        </div>


        <a class="details-btn"
           href="${pageContext.request.contextPath}/jobDetails?id=${job.jobId}">

            View Details →

        </a>

    </div>

</c:forEach>


<!-- NO JOB FOUND -->

<c:if test="${empty jobs}">

    <div class="no-job">

        <h2>😔 No Jobs Found</h2>

        <p>
            No job vacancies are available for your search.
        </p>

    </div>

</c:if>


<!-- BACK -->

<a class="back"
   href="${pageContext.request.contextPath}/dashboard">

    ← Back to Dashboard

</a>


</div>

</body>
</html>
