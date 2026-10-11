<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Job Details | Job Portal</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}

body {
    min-height: 100vh;

    background:
        radial-gradient(
            circle at top left,
            #dbeafe 0%,
            transparent 35%
        ),
        radial-gradient(
            circle at bottom right,
            #e0e7ff 0%,
            transparent 35%
        ),
        #f8fafc;

    padding: 35px 20px;
}

/* ================= TOP BAR ================= */

.topbar {
    width: 90%;
    max-width: 900px;

    margin: 0 auto 20px;

    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo {
    font-size: 25px;
    font-weight: 800;
    color: #101828;
}

.logo span {
    color: #2563eb;
}

.back-top {
    color: #475467;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
    transition: 0.3s;
}

.back-top:hover {
    color: #2563eb;
}

/* ================= MAIN CARD ================= */

.container {
    width: 90%;
    max-width: 900px;

    margin: auto;

    background: rgba(255,255,255,0.97);

    border: 1px solid #e4e7ec;
    border-radius: 22px;

    padding: 42px;

    box-shadow:
        0 20px 55px rgba(16,24,40,0.09);
}

/* ================= HEADER ================= */

.job-header {
    padding-bottom: 25px;
    border-bottom: 1px solid #eaecf0;
}

.job-title {
    display: flex;
    align-items: center;
    gap: 12px;

    margin-bottom: 10px;
}

.job-title h1 {
    color: #101828;
    font-size: 30px;
}

.job-icon {
    width: 48px;
    height: 48px;

    display: flex;
    align-items: center;
    justify-content: center;

    background: #eff6ff;
    border-radius: 12px;

    font-size: 24px;
}

.company {
    color: #475467;
    font-size: 17px;
    font-weight: 600;
}

/* ================= MESSAGES ================= */

.success {
    background: #ecfdf3;
    color: #027a48;

    border: 1px solid #abefc6;

    padding: 14px 16px;
    border-radius: 10px;

    margin-top: 22px;

    font-weight: 600;
}

.error {
    background: #fef3f2;
    color: #b42318;

    border: 1px solid #fecdca;

    padding: 14px 16px;
    border-radius: 10px;

    margin-top: 22px;

    font-weight: 600;
}

/* ================= JOB INFO ================= */

.info-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;

    gap: 18px;

    margin-top: 28px;
}

.info-card {
    background: #f8fafc;

    border: 1px solid #eaecf0;

    border-radius: 12px;

    padding: 18px;
}

.info-label {
    color: #667085;
    font-size: 13px;

    margin-bottom: 7px;
}

.info-value {
    color: #101828;
    font-size: 15px;
    font-weight: 700;
}

/* ================= SKILLS ================= */

.skills-box {
    margin-top: 22px;

    padding: 18px 20px;

    background: #eff6ff;

    border: 1px solid #bfdbfe;

    border-radius: 12px;

    color: #1d4ed8;

    line-height: 1.6;
}

.skills-title {
    font-weight: 700;
    margin-bottom: 5px;
}

/* ================= DESCRIPTION ================= */

.description {
    margin-top: 25px;

    padding: 24px;

    background: #ffffff;

    border: 1px solid #eaecf0;

    border-radius: 14px;
}

.description h3 {
    color: #101828;

    font-size: 18px;

    margin-bottom: 12px;
}

.description p {
    color: #475467;

    line-height: 1.8;

    font-size: 14px;

    white-space: pre-line;
}

/* ================= APPLY BUTTON ================= */

.apply-section {
    margin-top: 28px;
}

.apply-btn {
    width: 100%;

    border: none;

    padding: 15px;

    border-radius: 11px;

    background:
        linear-gradient(
            135deg,
            #2563eb,
            #1d4ed8
        );

    color: white;

    font-size: 16px;

    font-weight: 700;

    cursor: pointer;

    box-shadow:
        0 7px 18px rgba(37,99,235,0.25);

    transition: 0.3s;
}

.apply-btn:hover {
    transform: translateY(-2px);

    box-shadow:
        0 10px 25px rgba(37,99,235,0.32);
}

/* ================= BACK ================= */

.back {
    display: block;

    text-align: center;

    margin-top: 20px;

    color: #2563eb;

    text-decoration: none;

    font-weight: 600;

    font-size: 14px;
}

.back:hover {
    text-decoration: underline;
}

/* ================= RESPONSIVE ================= */

@media(max-width: 700px) {

    body {
        padding: 25px 10px;
    }

    .topbar,
    .container {
        width: 96%;
    }

    .container {
        padding: 25px;
    }

    .job-title h1 {
        font-size: 24px;
    }

    .info-grid {
        grid-template-columns: 1fr;
    }

    .topbar {
        flex-direction: column;
        align-items: flex-start;
        gap: 12px;
    }
}

</style>

</head>

<body>


<!-- ================= TOP BAR ================= -->

<div class="topbar">

    <div class="logo">
        Job<span>Portal</span>
    </div>

    <a
        class="back-top"
        href="${pageContext.request.contextPath}/jobs">

        ← Back to Jobs

    </a>

</div>


<!-- ================= JOB DETAILS ================= -->

<div class="container">


    <!-- JOB HEADER -->

    <div class="job-header">

        <div class="job-title">

            <div class="job-icon">
                💼
            </div>

            <h1>
                ${job.title}
            </h1>

        </div>

        <div class="company">
            🏢 ${job.company}
        </div>

    </div>


    <!-- ================= SUCCESS ================= -->

    <% if (request.getAttribute("success") != null) { %>

        <div class="success">

            ✓ <%= request.getAttribute("success") %>

        </div>

    <% } %>


    <!-- ================= ERROR ================= -->

    <% if (request.getAttribute("error") != null) { %>

        <div class="error">

            ✕ <%= request.getAttribute("error") %>

        </div>

    <% } %>


    <!-- ================= JOB INFORMATION ================= -->

    <div class="info-grid">


        <div class="info-card">

            <div class="info-label">
                📍 Location
            </div>

            <div class="info-value">
                ${job.location}
            </div>

        </div>


        <div class="info-card">

            <div class="info-label">
                💰 Salary
            </div>

            <div class="info-value">
                ${job.salary}
            </div>

        </div>


        <div class="info-card">

            <div class="info-label">
                📅 Last Date to Apply
            </div>

            <div class="info-value">
                ${job.lastDate}
            </div>

        </div>


        <div class="info-card">

            <div class="info-label">
                🏢 Company
            </div>

            <div class="info-value">
                ${job.company}
            </div>

        </div>


    </div>


    <!-- ================= SKILLS ================= -->

    <div class="skills-box">

        <div class="skills-title">
            🛠 Required Skills
        </div>

        <div>
            ${job.skills}
        </div>

    </div>


    <!-- ================= DESCRIPTION ================= -->

    <div class="description">

        <h3>
            📄 Job Description
        </h3>

        <p>
            ${job.description}
        </p>

    </div>


    <!-- ================= APPLY ================= -->

    <div class="apply-section">

        <form
            action="${pageContext.request.contextPath}/applyJob"
            method="post">

            <input
                type="hidden"
                name="jobId"
                value="${job.jobId}">

            <button
                type="submit"
                class="apply-btn">

                🚀 Apply Now

            </button>

        </form>

    </div>


    <!-- ================= BACK ================= -->

    <a
        class="back"
        href="${pageContext.request.contextPath}/jobs">

        ← Back to Jobs

    </a>


</div>


</body>

</html>