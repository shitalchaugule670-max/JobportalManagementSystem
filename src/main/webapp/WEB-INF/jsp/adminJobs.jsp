
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Manage Jobs | Admin</title>

<style>

/* ================= GLOBAL ================= */

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: #f5f8fa;
    color: #172033;
    min-height: 100vh;
}

/* ================= SIDEBAR ================= */

.sidebar {
    position: fixed;
    left: 0;
    top: 0;
    width: 250px;
    height: 100vh;

    background:
        linear-gradient(180deg, #0f172a, #102a43);

    color: white;
    padding: 30px 20px;

    box-shadow: 5px 0 25px rgba(15, 23, 42, 0.12);
}

.logo {
    font-size: 27px;
    font-weight: 800;
    letter-spacing: -0.5px;
    margin-bottom: 6px;
}

.logo span {
    color: #2dd4bf;
}

.subtitle {
    color: #94a3b8;
    font-size: 13px;
    margin-bottom: 42px;
}

.menu-title {
    color: #64748b;
    font-size: 11px;
    font-weight: 700;
    letter-spacing: 1.2px;
    margin-bottom: 12px;
}

.menu a {
    display: block;
    color: #cbd5e1;
    text-decoration: none;

    padding: 14px 15px;
    border-radius: 11px;
    margin-bottom: 8px;

    font-size: 14px;
    font-weight: 600;

    transition: all 0.25s ease;
}

.menu a:hover {
    background: rgba(45, 212, 191, 0.12);
    color: #5eead4;
    transform: translateX(4px);
}

.menu .active {
    background:
        linear-gradient(135deg, #14b8a6, #0f766e);

    color: white;

    box-shadow:
        0 8px 20px rgba(20, 184, 166, 0.25);
}

/* ================= MAIN ================= */

.main {
    margin-left: 250px;
    padding: 38px 45px;
}

/* ================= HEADER ================= */

.header {
    display: flex;
    justify-content: space-between;
    align-items: center;

    margin-bottom: 32px;
}

.header h1 {
    font-size: 31px;
    color: #0f172a;
    margin-bottom: 6px;
}

.header p {
    color: #64748b;
    font-size: 14px;
}

/* ================= ADD BUTTON ================= */

.add-btn {
    display: inline-flex;
    align-items: center;
    gap: 7px;

    background:
        linear-gradient(135deg, #14b8a6, #0f766e);

    color: white;
    text-decoration: none;

    padding: 13px 21px;
    border-radius: 10px;

    font-size: 14px;
    font-weight: 700;

    box-shadow:
        0 8px 20px rgba(20, 184, 166, 0.22);

    transition: all 0.25s ease;
}

.add-btn:hover {
    transform: translateY(-3px);

    box-shadow:
        0 13px 25px rgba(20, 184, 166, 0.30);
}

/* ================= JOB LIST ================= */

.job-list {
    display: grid;
    gap: 20px;
}

/* ================= JOB CARD ================= */

.job {
    background: white;

    border: 1px solid #e2e8f0;
    border-radius: 18px;

    padding: 26px 28px;

    box-shadow:
        0 7px 25px rgba(15, 23, 42, 0.06);

    position: relative;
    overflow: hidden;

    transition: all 0.3s ease;
}

.job::before {
    content: "";

    position: absolute;
    left: 0;
    top: 0;

    width: 5px;
    height: 100%;

    background:
        linear-gradient(180deg, #14b8a6, #0f766e);
}

.job:hover {
    transform: translateY(-5px);

    box-shadow:
        0 15px 35px rgba(15, 23, 42, 0.10);
}

/* ================= JOB TOP ================= */

.job-top {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;

    gap: 20px;
}

.job h2 {
    margin-bottom: 8px;

    color: #0f766e;

    font-size: 22px;
    font-weight: 750;
}

.company {
    color: #64748b;

    font-size: 14px;
    font-weight: 600;
}

/* ================= JOB INFO ================= */

.info {
    margin-top: 17px;

    color: #475569;

    line-height: 2;

    font-size: 14px;

    padding: 15px 18px;

    background: #f8fafc;

    border-radius: 12px;

    border: 1px solid #edf2f7;
}

.info b {
    color: #334155;
}

/* ================= SKILLS ================= */

.skills {
    margin-top: 14px;

    background:
        linear-gradient(
            135deg,
            #ecfeff,
            #f0fdfa
        );

    color: #0f766e;

    padding: 12px 15px;

    border-radius: 10px;

    border: 1px solid #ccfbf1;

    font-size: 14px;
}

.skills b {
    color: #115e59;
}

/* ================= ACTIONS ================= */

.actions {
    margin-top: 21px;

    display: flex;
    gap: 10px;
}

/* ================= EDIT ================= */

.edit {
    display: inline-flex;
    align-items: center;
    gap: 5px;

    background: #0f766e;

    color: white;

    padding: 10px 18px;

    text-decoration: none;

    border-radius: 9px;

    font-size: 13px;
    font-weight: 700;

    transition: all 0.25s ease;
}

.edit:hover {
    background: #115e59;
    transform: translateY(-2px);
}

/* ================= DELETE ================= */

.delete {
    display: inline-flex;
    align-items: center;
    gap: 5px;

    background: #fff1f2;

    color: #e11d48;

    padding: 10px 18px;

    text-decoration: none;

    border-radius: 9px;

    border: 1px solid #fecdd3;

    font-size: 13px;
    font-weight: 700;

    transition: all 0.25s ease;
}

.delete:hover {
    background: #e11d48;
    color: white;

    transform: translateY(-2px);
}

/* ================= EMPTY ================= */

.empty {
    background: white;

    text-align: center;

    padding: 70px 30px;

    border-radius: 18px;

    border: 1px solid #e2e8f0;

    box-shadow:
        0 8px 25px rgba(15, 23, 42, 0.05);
}

.empty h2 {
    color: #334155;
    margin-bottom: 10px;
}

.empty p {
    color: #94a3b8;
}

/* ================= BACK ================= */

.back {
    display: inline-flex;

    margin-top: 27px;

    color: #0f766e;

    text-decoration: none;

    font-weight: 700;

    font-size: 14px;

    transition: 0.2s;
}

.back:hover {
    color: #115e59;
    transform: translateX(-3px);
}

/* ================= RESPONSIVE ================= */

@media(max-width: 900px) {

    .sidebar {
        width: 210px;
    }

    .main {
        margin-left: 210px;
        padding: 30px;
    }

}

@media(max-width: 700px) {

    .sidebar {
        position: relative;

        width: 100%;
        height: auto;

        padding: 20px;
    }

    .main {
        margin-left: 0;
        padding: 25px 18px;
    }

    .header {
        flex-direction: column;
        align-items: flex-start;

        gap: 18px;
    }

    .add-btn {
        width: 100%;
        justify-content: center;
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
            💼 &nbsp; Manage Jobs
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

    <div class="header">

        <div>

            <h1>
                Manage Jobs
            </h1>

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


                <!-- JOB INFORMATION -->

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


                <!-- SKILLS -->

                <div class="skills">

                    🛠 <b>Skills:</b>
                    ${job.skills}

                </div>


                <!-- ACTIONS -->

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


        <!-- NO JOBS -->

        <c:if test="${empty jobs}">

            <div class="empty">

                <h2>
                    📭 No Jobs Available
                </h2>

                <p>
                    Add a new job to get started.
                </p>

            </div>

        </c:if>

    </div>


    <!-- BACK -->

    <a class="back"
       href="${pageContext.request.contextPath}/admin">

        ← Back to Dashboard

    </a>

</div>


</body>

</html>

