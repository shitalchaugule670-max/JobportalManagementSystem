<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<title>Manage Jobs | Job Portal</title>

<style>

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: #f4f7f6;
    color: #1f2937;
    min-height: 100vh;
}

/* ================= SIDEBAR ================= */

.sidebar {
    position: fixed;
    left: 0;
    top: 0;
    width: 245px;
    height: 100vh;
    background: #12372a;
    color: white;
    padding: 30px 20px;
    box-shadow: 5px 0 20px rgba(0,0,0,0.08);
}

.logo {
    font-size: 26px;
    font-weight: 800;
    margin-bottom: 5px;
}

.logo span {
    color: #8fd694;
}

.subtitle {
    color: #b8c8c1;
    font-size: 13px;
    margin-bottom: 40px;
}

.menu-title {
    color: #7fa496;
    font-size: 11px;
    font-weight: bold;
    letter-spacing: 1px;
    margin-bottom: 12px;
}

.menu a {
    display: block;
    color: #dce9e3;
    text-decoration: none;
    padding: 13px 15px;
    border-radius: 10px;
    margin-bottom: 8px;
    font-weight: 600;
    transition: 0.3s;
}

.menu a:hover,
.menu .active {
    background: #2e7d5b;
    color: white;
    transform: translateX(3px);
}

/* ================= MAIN ================= */

.main {
    margin-left: 245px;
    padding: 40px;
}

/* ================= HEADER ================= */

.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 30px;
}

.header h1 {
    font-size: 32px;
    color: #173b2f;
}

.header p {
    margin-top: 7px;
    color: #718096;
    font-size: 15px;
}

/* ================= ADD BUTTON ================= */

.add-btn {
    background: #2e7d5b;
    color: white;
    text-decoration: none;
    padding: 13px 21px;
    border-radius: 10px;
    font-weight: 700;
    box-shadow: 0 6px 15px rgba(46,125,91,0.25);
    transition: 0.3s;
}

.add-btn:hover {
    background: #256847;
    transform: translateY(-2px);
}

/* ================= JOB LIST ================= */

.job-list {
    display: grid;
    gap: 20px;
}

/* ================= JOB CARD ================= */

.job {
    background: white;
    border: 1px solid #e3ebe7;
    border-radius: 16px;
    padding: 26px;
    box-shadow: 0 8px 25px rgba(18,55,42,0.06);
    transition: 0.3s;
}

.job:hover {
    transform: translateY(-3px);
    box-shadow: 0 14px 32px rgba(18,55,42,0.11);
}

.job-top {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
}

.job h2 {
    color: #236548;
    font-size: 22px;
    margin-bottom: 7px;
}

.company {
    color: #718096;
    font-size: 15px;
}

/* ================= JOB INFO ================= */

.info {
    margin-top: 17px;
    color: #4a5568;
    line-height: 1.9;
    font-size: 15px;
}

.info b {
    color: #263b33;
}

/* ================= SKILLS ================= */

.skills {
    margin-top: 16px;
    background: #edf8f2;
    color: #236548;
    padding: 12px 15px;
    border-radius: 9px;
    border-left: 4px solid #2e7d5b;
    font-size: 14px;
}

.skills b {
    color: #174c38;
}

/* ================= ACTION BUTTONS ================= */

.actions {
    margin-top: 22px;
    padding-top: 18px;
    border-top: 1px solid #edf0ee;
}

.edit,
.delete {
    display: inline-block;
    padding: 10px 17px;
    text-decoration: none;
    border-radius: 8px;
    font-weight: 700;
    font-size: 14px;
    transition: 0.3s;
}

.edit {
    background: #2e7d5b;
    color: white;
    margin-right: 8px;
}

.edit:hover {
    background: #256847;
    transform: translateY(-2px);
}

.delete {
    background: #fff1f1;
    color: #dc3545;
    border: 1px solid #ffd4d4;
}

.delete:hover {
    background: #dc3545;
    color: white;
}

/* ================= EMPTY ================= */

.empty {
    background: white;
    text-align: center;
    padding: 55px 30px;
    border-radius: 16px;
    color: #718096;
    box-shadow: 0 8px 25px rgba(18,55,42,0.06);
}

.empty h2 {
    color: #334e43;
    margin-bottom: 8px;
}

/* ================= BACK ================= */

.back {
    display: inline-block;
    margin-top: 25px;
    color: #2e7d5b;
    text-decoration: none;
    font-weight: 700;
}

.back:hover {
    color: #174c38;
}

/* ================= RESPONSIVE ================= */

@media (max-width: 800px) {

    .sidebar {
        width: 200px;
    }

    .main {
        margin-left: 200px;
        padding: 25px;
    }

    .header {
        flex-direction: column;
        align-items: flex-start;
        gap: 20px;
    }
}

@media (max-width: 600px) {

    .sidebar {
        position: relative;
        width: 100%;
        height: auto;
    }

    .main {
        margin-left: 0;
        padding: 20px;
    }

    .header h1 {
        font-size: 26px;
    }

    .add-btn {
        width: 100%;
        text-align: center;
    }
}

</style>

</head>

<body>

<!-- ================= SIDEBAR ================= -->

<div class="sidebar">


<div class="logo">
    Job<span>Portal</span>
</div>

<div class="subtitle">
    Management System
</div>

<div class="menu-title">
    MAIN MENU
</div>

<div class="menu">

    <a href="${pageContext.request.contextPath}/admin">
        ▦ &nbsp; Dashboard
    </a>

    <a href="${pageContext.request.contextPath}/admin/jobs"
       class="active">
        ＋ &nbsp; Manage Jobs
    </a>

    <a href="${pageContext.request.contextPath}/admin/applications">
        ▤ &nbsp; Applications
    </a>

</div>

<br>

<div class="menu-title">
    ACCOUNT
</div>

<div class="menu">

    <a href="${pageContext.request.contextPath}/logout">
        🚪 &nbsp; Logout
    </a>

</div>


</div>

<!-- ================= MAIN ================= -->

<div class="main">

```
<div class="header">

    <div>
        <h1>Manage Jobs</h1>

        <p>
            Add, update or delete job opportunities.
        </p>
    </div>

    <a class="add-btn"
       href="${pageContext.request.contextPath}/admin/add-job">

        ＋ Add New Job

    </a>

</div>


<!-- ================= JOB LIST ================= -->

<div class="job-list">

    <c:forEach var="job" items="${jobs}">

        <div class="job">

            <div class="job-top">

                <div>

                    <h2>
                        💼 ${job.title}
                    </h2>

                    <div class="company">
                        🏢 ${job.company}
                    </div>

                </div>

            </div>


            <div class="info">

                📍 <b>Location:</b>
                ${job.location}

                <br>

                💰 <b>Salary:</b>
                ${job.salary}

                <br>

                📅 <b>Last Date:</b>
                ${job.lastDate}

            </div>


            <div class="skills">

                🛠 <b>Required Skills:</b>
                ${job.skills}

            </div>


            <div class="actions">

                <a class="edit"
                   href="${pageContext.request.contextPath}/admin/edit-job?id=${job.jobId}">

                    ✏ Edit

                </a>


                <a class="delete"
                   href="${pageContext.request.contextPath}/admin/delete-job?id=${job.jobId}"
                   onclick="return confirm('Are you sure you want to delete this job?');">

                    🗑 Delete

                </a>

            </div>

        </div>

    </c:forEach>


    <!-- ================= EMPTY ================= -->

    <c:if test="${empty jobs}">

        <div class="empty">

            <h2>📭 No Jobs Available</h2>

            <p>
                Add a new job to get started.
            </p>

        </div>

    </c:if>

</div>


<a class="back"
   href="${pageContext.request.contextPath}/admin">

    ← Back to Admin Dashboard

</a>


</div>

</body>
</html>
