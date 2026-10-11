<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Job Portal | Student Dashboard</title>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
    rel="stylesheet">

<style>

* {

    margin: 0;

    padding: 0;

    box-sizing: border-box;

}

body {

    min-height: 100vh;

    font-family: 'Inter', sans-serif;

    color: #172033;

    background:

        radial-gradient(circle at 5% 10%, rgba(45,212,191,0.10), transparent 28%),

        radial-gradient(circle at 95% 20%, rgba(99,102,241,0.08), transparent 28%),

        #f5f8fc;

}


/* ================= NAVBAR ================= */

.navbar {

    height: 76px;

    display: flex;

    align-items: center;

    justify-content: space-between;

    padding: 0 6%;

    background: rgba(255,255,255,0.92);

    backdrop-filter: blur(15px);

    border-bottom: 1px solid #e7edf4;

    box-shadow: 0 5px 25px rgba(15,23,42,0.06);

    position: sticky;

    top: 0;

    z-index: 100;

}


/* ================= LOGO ================= */

.logo {

    display: flex;

    align-items: center;

    gap: 10px;

    font-size: 22px;

    font-weight: 800;

    color: #10243b;

    letter-spacing: -0.6px;

}

.logo-icon {

    width: 40px;

    height: 40px;

    display: flex;

    align-items: center;

    justify-content: center;

    border-radius: 11px;

    background: linear-gradient(

        135deg,

        #14b8a6,

        #2dd4bf

    );

    font-size: 20px;

    box-shadow: 0 7px 18px rgba(20,184,166,0.20);

}

.logo span {

    color: #14a899;

}


/* ================= NAV RIGHT ================= */

.nav-right {

    display: flex;

    align-items: center;

    gap: 5px;

}

.nav-right a {

    text-decoration: none;

    color: #536579;

    font-size: 13px;

    font-weight: 600;

    padding: 10px 14px;

    border-radius: 9px;

    transition: 0.25s ease;

}

.nav-right a:hover {

    color: #109d8e;

    background: #ecfbf9;

}


/* ================= LOGOUT ================= */

.nav-right .logout {

    margin-left: 5px;

    color: #dc5555;

    background: #fff1f1;

}

.nav-right .logout:hover {

    color: white;

    background: #ef5350;

}


/* ================= MAIN ================= */

.container {

    width: 88%;

    max-width: 1180px;

    margin: 0 auto;

    padding: 42px 0 50px;

}


/* ================= WELCOME ================= */

.welcome {

    position: relative;

    overflow: hidden;

    padding: 45px;

    border-radius: 24px;

    color: white;

    background:

        radial-gradient(

            circle at 90% 10%,

            rgba(45,212,191,0.20),

            transparent 28%

        ),

        linear-gradient(

            135deg,

            #0a1b2d,

            #102d45 60%,

            #12394c

        );

    box-shadow:

        0 18px 40px rgba(15,35,55,0.18);

}


/* Decorative circles */

.welcome::before {

    content: "";

    position: absolute;

    width: 240px;

    height: 240px;

    right: -80px;

    top: -110px;

    border-radius: 50%;

    border: 1px solid rgba(255,255,255,0.08);

    box-shadow:

        0 0 0 30px rgba(255,255,255,0.025),

        0 0 0 60px rgba(255,255,255,0.018);

}

.welcome::after {

    content: "";

    position: absolute;

    width: 100px;

    height: 100px;

    right: 100px;

    bottom: -55px;

    border-radius: 50%;

    background: rgba(45,212,191,0.08);

}


/* Welcome content */

.welcome-content {

    position: relative;

    z-index: 2;

}

.welcome-label {

    display: inline-block;

    padding: 7px 12px;

    border-radius: 20px;

    background: rgba(45,212,191,0.12);

    border: 1px solid rgba(45,212,191,0.20);

    color: #80eee2;

    font-size: 11px;

    font-weight: 700;

    text-transform: uppercase;

    letter-spacing: 1.5px;

    margin-bottom: 15px;

}

.welcome h1 {

    font-size: 36px;

    font-weight: 800;

    letter-spacing: -1px;

    margin-bottom: 12px;

}

.welcome h1 span {

    color: #5ee7d9;

}

.welcome p {

    color: #b9cad8;

    font-size: 15px;

    line-height: 1.7;

    max-width: 620px;

}


/* ================= SECTION TITLE ================= */

.section-heading {

    display: flex;

    align-items: center;

    gap: 11px;

    margin: 35px 0 18px;

    color: #172b40;

    font-size: 17px;

    font-weight: 800;

}

.section-heading::before {

    content: "";

    width: 4px;

    height: 21px;

    border-radius: 5px;

    background: #18b5a5;

}


/* ================= CARDS ================= */

.cards {

    display: grid;

    grid-template-columns: repeat(4, 1fr);

    gap: 20px;

}

.card {

    position: relative;

    overflow: hidden;

    background: rgba(255,255,255,0.96);

    border: 1px solid #e6edf4;

    border-radius: 20px;

    padding: 28px 23px;

    min-height: 295px;

    display: flex;

    flex-direction: column;

    align-items: center;

    text-align: center;

    box-shadow:

        0 8px 25px rgba(15,23,42,0.055);

    transition:

        transform 0.3s ease,

        box-shadow 0.3s ease,

        border-color 0.3s ease;

}

.card::before {

    content: "";

    position: absolute;

    left: 0;

    top: 0;

    width: 100%;

    height: 4px;

    background: linear-gradient(

        90deg,

        #14b8a6,

        #5ee7d9

    );

}

.card:hover {

    transform: translateY(-8px);

    border-color: #c8ebe6;

    box-shadow:

        0 18px 38px rgba(15,23,42,0.11);

}


/* ================= ICON ================= */

.icon {

    width: 65px;

    height: 65px;

    display: flex;

    align-items: center;

    justify-content: center;

    margin-bottom: 18px;

    border-radius: 18px;

    background:

        linear-gradient(

            135deg,

            #e9faf7,

            #f1fcfb

        );

    border: 1px solid #d5f2ed;

    font-size: 29px;

    transition: 0.3s;

}

.card:hover .icon {

    transform: scale(1.08) rotate(-3deg);

    box-shadow:

        0 8px 20px rgba(20,184,166,0.12);

}


/* ================= CARD TEXT ================= */

.card h2 {

    color: #172b40;

    font-size: 18px;

    font-weight: 750;

    margin-bottom: 10px;

}

.card p {

    color: #718196;

    font-size: 13px;

    line-height: 1.65;

    margin-bottom: 22px;

    flex: 1;

}


/* ================= BUTTON ================= */

.btn {

    display: inline-flex;

    align-items: center;

    justify-content: center;

    gap: 7px;

    min-width: 125px;

    padding: 10px 16px;

    border-radius: 9px;

    background: #13a998;

    color: white;

    text-decoration: none;

    font-size: 12px;

    font-weight: 700;

    transition: 0.3s;

    box-shadow:

        0 6px 15px rgba(20,184,166,0.15);

}

.btn:hover {

    background: #0e9385;

    transform: translateY(-2px);

    box-shadow:

        0 9px 20px rgba(20,184,166,0.22);

}


/* ================= AI CAREER BUTTON ================= */

.ai-btn {

    background: linear-gradient(

        135deg,

        #6366f1,

        #4f46e5

    );

    box-shadow:

        0 6px 15px rgba(79,70,229,0.18);

}

.ai-btn:hover {

    background: linear-gradient(

        135deg,

        #4f46e5,

        #4338ca

    );

    box-shadow:

        0 9px 20px rgba(79,70,229,0.25);

}


/* ================= INFO ================= */

.info {

    position: relative;

    overflow: hidden;

    margin-top: 25px;

    padding: 28px 35px;

    border-radius: 20px;

    text-align: center;

    background:

        linear-gradient(

            135deg,

            #ffffff,

            #f5fbfa

        );

    border: 1px solid #dfeeea;

    box-shadow:

        0 8px 25px rgba(15,23,42,0.045);

}

.info::after {

    content: "✦";

    position: absolute;

    right: 25px;

    top: 15px;

    color: #8adfd5;

    font-size: 28px;

}

.info h2 {

    color: #172b40;

    font-size: 19px;

    margin-bottom: 8px;

}

.info p {

    color: #728398;

    font-size: 13px;

    line-height: 1.7;

}


/* ================= RESPONSIVE ================= */

@media(max-width: 1050px) {

    .cards {

        grid-template-columns: repeat(2, 1fr);

    }

}

@media(max-width: 700px) {

    .navbar {

        height: auto;

        padding: 15px 20px;

        flex-direction: column;

        gap: 13px;

    }

    .nav-right {

        flex-wrap: wrap;

        justify-content: center;

    }

    .container {

        width: 92%;

        padding-top: 28px;

    }

    .welcome {

        padding: 32px 25px;

    }

    .welcome h1 {

        font-size: 28px;

    }

    .cards {

        grid-template-columns: 1fr;

    }

}

@media(max-width: 450px) {

    .logo {

        font-size: 20px;

    }

    .nav-right a {

        padding: 8px 10px;

        font-size: 12px;

    }

    .welcome h1 {

        font-size: 25px;

    }

}

</style>

</head>


<body>


<!-- ================= NAVBAR ================= -->

<div class="navbar">


    <div class="logo">

        <div class="logo-icon">

            💼

        </div>

        Job<span>Portal</span>

    </div>


    <div class="nav-right">

        <a href="${pageContext.request.contextPath}/jobs">

            Jobs

        </a>

        <a href="${pageContext.request.contextPath}/myApplications">

            Applications

        </a>

        <a href="${pageContext.request.contextPath}/profile">

            Profile

        </a>

        <a class="logout"

           href="${pageContext.request.contextPath}/logout">

            Logout

        </a>

    </div>


</div>


<!-- ================= MAIN ================= -->

<div class="container">


    <!-- ================= WELCOME ================= -->

    <div class="welcome">

        <div class="welcome-content">

            <div class="welcome-label">

                Student Dashboard

            </div>

            <h1>

                Welcome to <span>Job Portal</span> 👋

            </h1>

            <p>

                Discover opportunities, apply for jobs and build

                your career through our placement platform.

            </p>

        </div>

    </div>


    <!-- ================= SECTION TITLE ================= -->

    <div class="section-heading">

        Explore Your Opportunities

    </div>


    <!-- ================= CARDS ================= -->

    <div class="cards">


        <!-- SEARCH JOBS -->

        <div class="card">

            <div class="icon">

                🔍

            </div>

            <h2>

                Search Jobs

            </h2>

            <p>

                Explore available job opportunities based on

                your skills, interests and career goals.

            </p>

            <a class="btn"

               href="${pageContext.request.contextPath}/jobs">

                View Jobs →

            </a>

        </div>



        <!-- APPLICATIONS -->

        <div class="card">

            <div class="icon">

                📄

            </div>

            <h2>

                My Applications

            </h2>

            <p>

                Track your submitted applications and check

                their current status easily.

            </p>

            <a class="btn"

               href="${pageContext.request.contextPath}/myApplications">

                Applications →

            </a>

        </div>



        <!-- PROFILE -->

        <div class="card">

            <div class="icon">

                👤

            </div>

            <h2>

                My Profile

            </h2>

            <p>

                View and manage your personal information

                and account details.

            </p>

            <a class="btn"

               href="${pageContext.request.contextPath}/profile">

                Profile →

            </a>

        </div>



        <!-- PREVIOUS PLACEMENT DRIVES -->

        <div class="card">

            <div class="icon">

                🏆

            </div>

            <h2>

                Previous Placement Drives

            </h2>

            <p>

                View previous placement drives and check

                questions asked during those drives.

            </p>

            <a class="btn"

               href="${pageContext.request.contextPath}/previousDrives">

                View Drives →

            </a>

        </div>



        <!-- ================= AI CAREER ASSISTANT ================= -->

        <div class="card">

            <div class="icon">

                🤖

            </div>

            <h2>

                AI Career Assistant

            </h2>

            <p>

                Get career guidance, interview preparation,

                Java, backend and resume guidance.

            </p>

            <a class="btn ai-btn"

               href="${pageContext.request.contextPath}/ai-career">

                Open Assistant →

            </a>

        </div>


    </div>


    <!-- ================= INFO ================= -->

    <div class="info">

        <h2>

            🚀 Start Your Career Journey

        </h2>

        <p>

            Search for suitable jobs, apply online and track

            your applications easily through the Job Portal

            Management System.

        </p>

    </div>


</div>


</body>

</html>