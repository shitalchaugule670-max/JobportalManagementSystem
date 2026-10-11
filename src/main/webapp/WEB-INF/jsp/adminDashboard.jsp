<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<title>Admin Dashboard | Job Portal</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<style>

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Inter', sans-serif;
    min-height: 100vh;
    background:
        radial-gradient(circle at 10% 20%, rgba(45,212,191,0.15), transparent 30%),
        radial-gradient(circle at 90% 10%, rgba(99,102,241,0.16), transparent 30%),
        linear-gradient(135deg, #07111f, #0d1b2e 50%, #101b35);
    color: #ffffff;
}

/* ================= HEADER ================= */

.header {
    height: 78px;
    padding: 0 55px;

    display: flex;
    justify-content: space-between;
    align-items: center;

    background: rgba(8, 18, 32, 0.82);
    backdrop-filter: blur(16px);

    border-bottom: 1px solid rgba(255,255,255,0.08);

    position: sticky;
    top: 0;
    z-index: 100;
}

.logo {
    display: flex;
    align-items: center;
    gap: 12px;
}

.logo-icon {
    width: 42px;
    height: 42px;

    display: flex;
    align-items: center;
    justify-content: center;

    border-radius: 12px;

    background: linear-gradient(135deg, #2dd4bf, #14b8a6);

    font-size: 21px;

    box-shadow: 0 8px 25px rgba(20,184,166,0.25);
}

.logo h1 {
    font-size: 22px;
    font-weight: 800;
    letter-spacing: -0.5px;
}

.logo span {
    color: #2dd4bf;
}

.admin-badge {
    padding: 9px 17px;

    border-radius: 30px;

    background: rgba(45,212,191,0.08);
    border: 1px solid rgba(45,212,191,0.25);

    color: #b7f7ef;

    font-size: 13px;
    font-weight: 600;
}

/* ================= MAIN ================= */

.container {
    width: 90%;
    max-width: 1180px;

    margin: 0 auto;

    padding: 65px 0 35px;
}

/* ================= WELCOME ================= */

.welcome {
    margin-bottom: 45px;
}

.welcome-small {
    color: #2dd4bf;

    font-size: 13px;
    font-weight: 700;

    text-transform: uppercase;
    letter-spacing: 2px;

    margin-bottom: 12px;
}

.welcome h2 {
    font-size: 42px;
    font-weight: 800;

    letter-spacing: -1.5px;

    margin-bottom: 12px;
}

.welcome h2 span {
    background: linear-gradient(90deg, #ffffff, #75eee0);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.welcome p {
    color: #9fb0c4;

    font-size: 16px;
    line-height: 1.7;

    max-width: 650px;
}

/* ================= SECTION TITLE ================= */

.section-title {
    display: flex;
    align-items: center;
    gap: 12px;

    margin-bottom: 20px;

    color: #dce8f5;

    font-size: 17px;
    font-weight: 700;
}

.section-title::before {
    content: "";

    width: 4px;
    height: 22px;

    border-radius: 5px;

    background: #2dd4bf;
}

/* ================= CARDS ================= */

.card-container {
    display: grid;

    grid-template-columns: repeat(2, 1fr);

    gap: 22px;
}

/* ================= CARD ================= */

.card {
    position: relative;

    min-height: 265px;

    padding: 30px;

    border-radius: 20px;

    background: rgba(255,255,255,0.055);

    border: 1px solid rgba(255,255,255,0.09);

    backdrop-filter: blur(15px);

    text-decoration: none;
    color: white;

    overflow: hidden;

    transition:
        transform 0.35s ease,
        border-color 0.35s ease,
        box-shadow 0.35s ease;
}

.card::before {
    content: "";

    position: absolute;

    width: 140px;
    height: 140px;

    right: -55px;
    top: -55px;

    border-radius: 50%;

    background: rgba(45,212,191,0.09);

    transition: 0.4s;
}

.card:hover {
    transform: translateY(-8px);

    border-color: rgba(45,212,191,0.35);

    box-shadow:
        0 20px 45px rgba(0,0,0,0.30),
        0 0 25px rgba(45,212,191,0.08);
}

.card:hover::before {
    transform: scale(1.5);
}

/* ================= ICON ================= */

.icon {
    width: 58px;
    height: 58px;

    display: flex;
    align-items: center;
    justify-content: center;

    border-radius: 16px;

    background: linear-gradient(
        135deg,
        rgba(45,212,191,0.18),
        rgba(45,212,191,0.05)
    );

    border: 1px solid rgba(45,212,191,0.18);

    font-size: 27px;

    margin-bottom: 22px;

    transition: 0.3s;
}

.card:hover .icon {
    transform: scale(1.08) rotate(-3deg);
}

/* ================= CARD CONTENT ================= */

.card h3 {
    font-size: 21px;

    margin-bottom: 10px;

    font-weight: 700;
}

.card p {
    color: #94a8bc;

    font-size: 14px;

    line-height: 1.7;

    max-width: 450px;

    margin-bottom: 22px;
}

/* ================= BUTTON ================= */

.card-button {
    display: inline-flex;

    align-items: center;
    gap: 8px;

    padding: 10px 17px;

    border-radius: 9px;

    background: #14b8a6;

    color: #ffffff;

    font-size: 13px;
    font-weight: 700;

    text-decoration: none;

    transition: 0.3s;
}

.card-button::after {
    content: "→";

    font-size: 16px;

    transition: 0.3s;
}

.card:hover .card-button {
    background: #2dd4bf;

    box-shadow: 0 8px 20px rgba(45,212,191,0.20);
}

.card:hover .card-button::after {
    transform: translateX(4px);
}

/* ================= LOGOUT ================= */

.logout-section {
    display: flex;

    justify-content: center;

    margin-top: 45px;
}

.logout-btn {
    display: inline-flex;

    align-items: center;
    gap: 9px;

    padding: 12px 24px;

    border-radius: 10px;

    background: rgba(239,68,68,0.08);

    border: 1px solid rgba(239,68,68,0.25);

    color: #ffb4b4;

    text-decoration: none;

    font-size: 13px;
    font-weight: 700;

    transition: 0.3s;
}

.logout-btn:hover {
    background: #ef4444;

    color: white;

    transform: translateY(-2px);

    box-shadow: 0 8px 20px rgba(239,68,68,0.20);
}

/* ================= FOOTER ================= */

.footer {
    text-align: center;

    color: #65798e;

    padding: 30px 20px;

    font-size: 12px;

    border-top: 1px solid rgba(255,255,255,0.06);
}

/* ================= RESPONSIVE ================= */

@media(max-width: 800px) {

    .header {
        padding: 0 20px;
    }

    .container {
        width: 92%;
        padding-top: 45px;
    }

    .welcome h2 {
        font-size: 32px;
    }

    .card-container {
        grid-template-columns: 1fr;
    }

}

@media(max-width: 500px) {

    .logo h1 {
        font-size: 18px;
    }

    .admin-badge {
        padding: 7px 10px;
        font-size: 11px;
    }

    .welcome h2 {
        font-size: 28px;
    }

    .card {
        padding: 25px;
    }

}

</style>

</head>

<body>

<!-- ================= HEADER ================= -->

<div class="header">


<div class="logo">

    <div class="logo-icon">
        💼
    </div>

    <h1>
        Job<span>Portal</span>
    </h1>

</div>

<div class="admin-badge">
    👤 Admin Panel
</div>


</div>

<!-- ================= MAIN ================= -->

<div class="container">


<!-- ================= WELCOME ================= -->

<div class="welcome">

    <div class="welcome-small">
        Administration Dashboard
    </div>

    <h2>
        Welcome, <span>Admin 👋</span>
    </h2>

    <p>
        Manage jobs, applications and placement activities
        from one powerful dashboard.
    </p>

</div>


<!-- ================= SECTION ================= -->

<div class="section-title">
    Management Options
</div>


<!-- ================= CARDS ================= -->

<div class="card-container">


    <!-- ADD JOB -->

    <a class="card"
       href="${pageContext.request.contextPath}/admin/add-job">

        <div class="icon">
            ➕
        </div>

        <h3>
            Add Job
        </h3>

        <p>
            Create and publish new job opportunities
            for students and job seekers.
        </p>

        <span class="card-button">
            Add Job
        </span>

    </a>


    <!-- MANAGE JOBS -->

    <a class="card"
       href="${pageContext.request.contextPath}/admin/jobs">

        <div class="icon">
            📋
        </div>

        <h3>
            Manage Jobs
        </h3>

        <p>
            View, update and manage all existing
            job vacancies available on the portal.
        </p>

        <span class="card-button">
            Manage Jobs
        </span>

    </a>


    <!-- APPLICATIONS -->

    <a class="card"
       href="${pageContext.request.contextPath}/admin/applications">

        <div class="icon">
            👥
        </div>

        <h3>
            View Applications
        </h3>

        <p>
            Review applications submitted by students
            and manage candidate information.
        </p>

        <span class="card-button">
            View Applications
        </span>

    </a>


    <!-- PLACEMENT DRIVES -->

    <a class="card"
       href="${pageContext.request.contextPath}/admin/placement-drives">

        <div class="icon">
            🎓
        </div>

        <h3>
            Placement Drives
        </h3>

        <p>
            Manage previous placement drives,
            companies, selection details and questions.
        </p>

        <span class="card-button">
            Manage Drives
        </span>

    </a>

</div>


<!-- ================= LOGOUT ================= -->

<div class="logout-section">

    <a class="logout-btn"
       href="${pageContext.request.contextPath}/logout">

        🚪 Logout

    </a>

</div>

</div>

<!-- ================= FOOTER ================= -->

<div class="footer">


© 2026 Job Portal Management System


</div>

</body>
</html>
