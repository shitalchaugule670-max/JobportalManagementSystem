<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Manage Placement Drives | Job Portal</title>

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
    margin-bottom: 35px;
}

.header h1 {
    color: #173b2f;
    font-size: 31px;
}

.header p {
    color: #718096;
    margin-top: 7px;
}

/* ================= ADD BUTTON ================= */

.add-btn {
    background: #2e7d5b;
    color: white;
    padding: 13px 20px;
    border-radius: 10px;
    text-decoration: none;
    font-weight: 700;
    box-shadow: 0 6px 15px rgba(46,125,91,0.22);
    transition: 0.3s;
}

.add-btn:hover {
    background: #256847;
    transform: translateY(-2px);
}

/* ================= PAGE TITLE ================= */

.page-title {
    margin-bottom: 25px;
}

.page-title h2 {
    color: #173b2f;
    font-size: 23px;
    margin-bottom: 7px;
}

.page-title p {
    color: #718096;
}

/* ================= DRIVE CARD ================= */

.drive-card {
    background: white;
    padding: 27px;
    border-radius: 17px;
    margin-bottom: 22px;
    border: 1px solid #e3ebe7;
    box-shadow: 0 8px 25px rgba(18,55,42,0.06);
    transition: 0.3s;
}

.drive-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 15px 32px rgba(18,55,42,0.11);
}

/* ================= DRIVE TOP ================= */

.drive-top {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 20px;
}

.drive-top h2 {
    color: #236548;
    font-size: 22px;
}

.year {
    background: #edf8f2;
    color: #236548;
    padding: 8px 14px;
    border-radius: 20px;
    font-weight: 700;
    border: 1px solid #cce8d8;
}

/* ================= INFO ================= */

.info {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 15px;
    margin-top: 23px;
}

.info-box {
    background: #f7faf8;
    padding: 17px;
    border-radius: 11px;
    border: 1px solid #e7efeb;
}

.info-box span {
    display: block;
    color: #718096;
    font-size: 12px;
    margin-bottom: 7px;
    font-weight: 600;
}

.info-box strong {
    color: #263b33;
    font-size: 15px;
}

/* ================= DESCRIPTION ================= */

.description {
    margin-top: 22px;
    padding: 17px;
    background: #f7faf8;
    border-left: 4px solid #2e7d5b;
    border-radius: 9px;
    color: #4a5568;
    line-height: 1.7;
}

.description strong {
    color: #263b33;
}

/* ================= ACTIONS ================= */

.actions {
    margin-top: 22px;
    padding-top: 18px;
    border-top: 1px solid #edf0ee;
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
}

.actions a {
    text-decoration: none;
    padding: 10px 17px;
    border-radius: 8px;
    font-weight: 700;
    font-size: 14px;
    transition: 0.3s;
}

.edit {
    background: #2e7d5b;
    color: white;
}

.edit:hover {
    background: #256847;
    transform: translateY(-2px);
}

.questions {
    background: #eaf5ef;
    color: #236548;
    border: 1px solid #cce8d8;
}

.questions:hover {
    background: #2e7d5b;
    color: white;
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
    padding: 55px 30px;
    text-align: center;
    border-radius: 17px;
    color: #718096;
    box-shadow: 0 8px 25px rgba(18,55,42,0.06);
}

.empty h2 {
    color: #334e43;
    margin-bottom: 8px;
}

/* ================= RESPONSIVE ================= */

@media(max-width: 950px) {

    .info {
        grid-template-columns: 1fr 1fr;
    }

}

@media(max-width: 750px) {

    .sidebar {
        position: relative;
        width: 100%;
        height: auto;
    }

    .main {
        margin-left: 0;
        padding: 25px;
    }

    .header {
        flex-direction: column;
        align-items: flex-start;
        gap: 20px;
    }

    .add-btn {
        width: 100%;
        text-align: center;
    }

}

@media(max-width: 500px) {

    .info {
        grid-template-columns: 1fr;
    }

    .drive-top {
        flex-direction: column;
        align-items: flex-start;
    }

    .actions a {
        width: 100%;
        text-align: center;
    }

}

</style>

</head>

<body>

<!-- ================= SIDEBAR ================= -->

<div class="sidebar">

```
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

    <a href="${pageContext.request.contextPath}/admin/jobs">
        ＋ &nbsp; Manage Jobs
    </a>

    <a href="${pageContext.request.contextPath}/admin/applications">
        ▤ &nbsp; Applications
    </a>

    <a href="${pageContext.request.contextPath}/admin/placements"
       class="active">
        🏢 &nbsp; Placement Drives
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
```

</div>

<!-- ================= MAIN ================= -->

<div class="main">

```
<div class="header">

    <div>

        <h1>Placement Drives</h1>

        <p>
            Manage previous placement drives and interview questions.
        </p>

    </div>

    <a class="add-btn"
       href="${pageContext.request.contextPath}/admin/add-placement">

        ＋ Add Placement Drive

    </a>

</div>


<!-- ================= TITLE ================= -->

<div class="page-title">

    <h2>Manage Previous Placement Drives</h2>

    <p>
        Add, edit, delete drives and manage interview questions.
    </p>

</div>


<!-- ================= EMPTY ================= -->

<c:if test="${empty drives}">

    <div class="empty">

        <h2>📭 No Placement Drives Found</h2>

        <p>
            Add your first placement drive to get started.
        </p>

    </div>

</c:if>


<!-- ================= DRIVES ================= -->

<c:forEach var="drive" items="${drives}">

    <div class="drive-card">

        <div class="drive-top">

            <h2>
                🏢 ${drive.companyName}
            </h2>

            <div class="year">
                ${drive.driveYear}
            </div>

        </div>


        <div class="info">

            <div class="info-box">

                <span>Job Role</span>

                <strong>
                    ${drive.jobRole}
                </strong>

            </div>


            <div class="info-box">

                <span>Package</span>

                <strong>
                    ${drive.packageAmount}
                </strong>

            </div>


            <div class="info-box">

                <span>Students Appeared</span>

                <strong>
                    ${drive.studentsAppeared}
                </strong>

            </div>


            <div class="info-box">

                <span>Students Selected</span>

                <strong>
                    ${drive.studentsSelected}
                </strong>

            </div>

        </div>


        <div class="description">

            <strong>📅 Drive Date:</strong>

            ${drive.driveDate}

            <br><br>

            <strong>📝 Description:</strong>

            ${drive.description}

        </div>


        <div class="actions">

            <a class="edit"
               href="${pageContext.request.contextPath}/admin/edit-placement?id=${drive.driveId}">

                ✏️ Edit

            </a>


            <a class="questions"
               href="${pageContext.request.contextPath}/admin/questions?driveId=${drive.driveId}">

                📚 Questions

            </a>


            <a class="delete"
               href="${pageContext.request.contextPath}/admin/delete-placement?id=${drive.driveId}"
               onclick="return confirm('Are you sure you want to delete this placement drive?');">

                🗑️ Delete

            </a>

        </div>

    </div>

</c:forEach>


</div>

</body>

</html>
