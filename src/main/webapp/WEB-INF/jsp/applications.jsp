<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
    uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Applications | Admin</title>

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

/* ================= NAVBAR ================= */

nav {
    height: 74px;
    background: linear-gradient(135deg, #0f172a, #102a43);
    padding: 0 7%;
    color: white;

    display: flex;
    justify-content: space-between;
    align-items: center;

    box-shadow: 0 5px 25px rgba(15, 23, 42, 0.15);
}

/* ================= LOGO ================= */

.logo {
    font-size: 25px;
    font-weight: 800;
    letter-spacing: -0.5px;
}

.logo span {
    color: #2dd4bf;
}

/* ================= NAV LINKS ================= */

.nav-links {
    display: flex;
    align-items: center;
    gap: 8px;
}

.nav-links a {
    color: #cbd5e1;
    text-decoration: none;
    padding: 10px 15px;
    border-radius: 9px;

    font-size: 14px;
    font-weight: 600;

    transition: all 0.25s ease;
}

.nav-links a:hover {
    background: rgba(45, 212, 191, 0.12);
    color: #5eead4;
}

/* ================= CONTAINER ================= */

.container {
    width: 88%;
    max-width: 1200px;
    margin: 45px auto;
}

/* ================= PAGE HEADER ================= */

.page-header {
    display: flex;
    justify-content: space-between;
    align-items: center;

    margin-bottom: 30px;
}

.page-header h1 {
    color: #0f172a;
    font-size: 31px;
    margin-bottom: 7px;
}

.page-header p {
    color: #64748b;
    font-size: 14px;
}

/* ================= APPLICATION COUNT ================= */

.count {
    background: #ecfeff;
    color: #0f766e;

    padding: 10px 16px;
    border-radius: 10px;

    border: 1px solid #ccfbf1;

    font-size: 13px;
    font-weight: 700;
}

/* ================= APPLICATION CARD ================= */

.card {
    background: white;

    padding: 26px 28px;

    border-radius: 18px;

    border: 1px solid #e2e8f0;

    box-shadow:
        0 7px 25px rgba(15, 23, 42, 0.06);

    margin-bottom: 20px;

    position: relative;

    overflow: hidden;

    transition: all 0.3s ease;
}

.card::before {
    content: "";

    position: absolute;

    left: 0;
    top: 0;

    width: 5px;
    height: 100%;

    background:
        linear-gradient(
            180deg,
            #14b8a6,
            #0f766e
        );
}

.card:hover {
    transform: translateY(-4px);

    box-shadow:
        0 15px 35px rgba(15, 23, 42, 0.10);
}

/* ================= CARD HEADER ================= */

.card-header {
    display: flex;

    justify-content: space-between;

    align-items: flex-start;

    gap: 20px;

    margin-bottom: 20px;
}

.card h2 {
    color: #0f766e;

    font-size: 21px;

    margin-bottom: 6px;
}

.application-id {
    color: #94a3b8;

    font-size: 12px;
}

/* ================= DETAILS ================= */

.details {
    display: grid;

    grid-template-columns: repeat(2, 1fr);

    gap: 12px;

    background: #f8fafc;

    border: 1px solid #edf2f7;

    border-radius: 12px;

    padding: 17px;

    margin-bottom: 20px;
}

.detail {
    color: #475569;

    font-size: 14px;

    padding: 5px 0;
}

.detail b {
    color: #334155;
}

/* ================= STATUS ================= */

.status-form {
    display: flex;

    align-items: center;

    gap: 10px;

    margin-top: 10px;
}

.status-form label {
    font-size: 14px;

    font-weight: 700;

    color: #334155;
}

.status-form select {
    padding: 9px 12px;

    border: 1px solid #cbd5e1;

    border-radius: 8px;

    background: white;

    font-size: 13px;

    cursor: pointer;
}

.status-form button {
    padding: 9px 16px;

    border: none;

    border-radius: 8px;

    background: #0f766e;

    color: white;

    font-size: 13px;

    font-weight: 700;

    cursor: pointer;

    transition: 0.25s;
}

.status-form button:hover {
    background: #115e59;
}

/* ================= NO APPLICATION ================= */

.no-applications {
    background: white;

    padding: 45px;

    text-align: center;

    border-radius: 18px;

    border: 1px solid #e2e8f0;

    color: #64748b;

    font-size: 15px;
}

/* ================= FOOTER ================= */

.footer {
    text-align: center;

    color: #94a3b8;

    font-size: 13px;

    padding: 15px 0 30px;
}

/* ================= RESPONSIVE ================= */

@media(max-width: 700px) {

    nav {
        height: auto;

        padding: 18px 5%;

        flex-direction: column;

        gap: 14px;
    }

    .nav-links {
        flex-wrap: wrap;

        justify-content: center;
    }

    .container {
        width: 92%;

        margin: 30px auto;
    }

    .page-header {
        flex-direction: column;

        align-items: flex-start;

        gap: 15px;
    }

    .details {
        grid-template-columns: 1fr;
    }

    .card-header {
        flex-direction: column;
    }

    .status-form {
        flex-direction: column;

        align-items: flex-start;
    }
}

</style>

</head>


<body>

<!-- ================= NAVBAR ================= -->

<nav>

    <div class="logo">
        💼 Job<span>Portal</span>
    </div>

    <div class="nav-links">

        <a href="${pageContext.request.contextPath}/admin">
            🏠 Dashboard
        </a>

        <a href="${pageContext.request.contextPath}/admin/jobs">
            💼 Manage Jobs
        </a>

        <a href="${pageContext.request.contextPath}/logout">
            🚪 Logout
        </a>

    </div>

</nav>


<!-- ================= MAIN ================= -->

<div class="container">

    <!-- PAGE HEADER -->

    <div class="page-header">

        <div>

            <h1>
                📋 Applications
            </h1>

            <p>
                Review and manage applications submitted by candidates.
            </p>

        </div>

        <div class="count">

            Total Applications:
            ${applications.size()}

        </div>

    </div>


    <!-- ================= APPLICATION LIST ================= -->

    <c:choose>

        <c:when test="${not empty applications}">

            <c:forEach
                var="application"
                items="${applications}">

                <div class="card">

                    <!-- CARD HEADER -->

                    <div class="card-header">

                        <div>

                            <h2>

                                💻 ${application.jobTitle}

                            </h2>

                            <div class="application-id">

                                Application #${application.applicationId}

                            </div>

                        </div>

                    </div>


                    <!-- DETAILS -->

                    <div class="details">

                        <div class="detail">

                            👤
                            <b>Applicant:</b>

                            ${application.userName}

                        </div>


                        <div class="detail">

                            📧
                            <b>Email:</b>

                            ${application.userEmail}

                        </div>


                        <div class="detail">

                            🏢
                            <b>Company:</b>

                            ${application.company}

                        </div>


                        <div class="detail">

                            📅
                            <b>Applied Date:</b>

                            ${application.applyDate}

                        </div>

                    </div>


                    <!-- STATUS UPDATE -->

                    <form
                        class="status-form"
                        action="${pageContext.request.contextPath}/updateApplicationStatus"
                        method="post">

                        <input
                            type="hidden"
                            name="applicationId"
                            value="${application.applicationId}">

                        <label>
                            Status:
                        </label>

                        <select name="status">

                            <option
                                value="Pending"
                                ${application.status == 'Pending' ? 'selected' : ''}>
                                Pending
                            </option>

                            <option
                                value="Shortlisted"
                                ${application.status == 'Shortlisted' ? 'selected' : ''}>
                                Shortlisted
                            </option>

                            <option
                                value="Rejected"
                                ${application.status == 'Rejected' ? 'selected' : ''}>
                                Rejected
                            </option>

                            <option
                                value="Selected"
                                ${application.status == 'Selected' ? 'selected' : ''}>
                                Selected
                            </option>

                        </select>

                        <button type="submit">
                            Update Status
                        </button>

                    </form>

                </div>

            </c:forEach>

        </c:when>


        <c:otherwise>

            <div class="no-applications">

                📭 No applications found.

            </div>

        </c:otherwise>

    </c:choose>

</div>


<!-- ================= FOOTER ================= -->

<div class="footer">

    © 2026 Job Portal Management System

</div>


</body>

</html>
