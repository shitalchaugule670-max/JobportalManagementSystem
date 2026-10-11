```jsp
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
    uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Placement Questions | Job Portal</title>

<style>

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: #f4f7f9;
    color: #1e293b;
    min-height: 100vh;
}

/* ================= HEADER ================= */

.top-header {
    background: #0f172a;
    color: white;
    padding: 18px 6%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 4px 20px rgba(15, 23, 42, 0.15);
}

.logo {
    font-size: 23px;
    font-weight: 700;
}

.logo span {
    color: #2dd4bf;
}

.home-link {
    color: #cbd5e1;
    text-decoration: none;
    padding: 9px 16px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: 600;
    transition: 0.3s;
}

.home-link:hover {
    background: #1e293b;
    color: #2dd4bf;
}

/* ================= CONTAINER ================= */

.container {
    width: 90%;
    max-width: 950px;
    margin: 45px auto;
}

/* ================= PAGE HEADER ================= */

.header {
    background: #0f172a;
    color: white;
    padding: 32px 35px;
    border-radius: 20px;
    margin-bottom: 28px;
    position: relative;
    overflow: hidden;
    box-shadow: 0 12px 30px rgba(15, 23, 42, 0.12);
}

.header::after {
    content: "";
    position: absolute;
    width: 180px;
    height: 180px;
    right: -60px;
    top: -70px;
    border-radius: 50%;
    background: rgba(45, 212, 191, 0.12);
}

.header h1 {
    margin-bottom: 9px;
    font-size: 28px;
    position: relative;
    z-index: 1;
}

.header p {
    margin: 0;
    color: #cbd5e1;
    font-size: 14px;
    position: relative;
    z-index: 1;
}

/* ================= QUESTION CARD ================= */

.question-card {
    background: white;
    padding: 24px 27px;
    margin-bottom: 17px;
    border-radius: 16px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 7px 22px rgba(15, 23, 42, 0.06);
    transition: 0.3s ease;
    position: relative;
    overflow: hidden;
}

.question-card::before {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    width: 4px;
    height: 100%;
    background: #0f766e;
}

.question-card:hover {
    transform: translateY(-3px);
    border-color: #99f6e4;
    box-shadow: 0 12px 30px rgba(15, 23, 42, 0.10);
}

/* ================= CATEGORY ================= */

.category {
    display: inline-block;
    background: #ccfbf1;
    color: #0f766e;
    padding: 6px 12px;
    border-radius: 20px;
    font-size: 12px;
    font-weight: 700;
    margin-bottom: 13px;
    text-transform: uppercase;
    letter-spacing: 0.4px;
}

/* ================= QUESTION ================= */

.question-row {
    display: flex;
    align-items: flex-start;
    gap: 10px;
}

.question-number {
    color: #0f766e;
    font-weight: 800;
    white-space: nowrap;
    font-size: 15px;
}

.question-text {
    color: #334155;
    font-size: 16px;
    line-height: 1.65;
}

/* ================= NO DATA ================= */

.no-data {
    background: white;
    padding: 55px 30px;
    border-radius: 18px;
    text-align: center;
    border: 1px solid #e2e8f0;
    box-shadow: 0 8px 25px rgba(15, 23, 42, 0.06);
}

.empty-icon {
    font-size: 48px;
    margin-bottom: 15px;
}

.no-data h2 {
    color: #334155;
    margin-bottom: 10px;
}

.no-data p {
    color: #64748b;
    font-size: 14px;
}

/* ================= BACK BUTTON ================= */

.back-btn {
    display: block;
    width: fit-content;
    margin: 30px auto 10px;
    padding: 12px 23px;
    background: #0f766e;
    color: white;
    text-decoration: none;
    border-radius: 9px;
    font-weight: 700;
    font-size: 14px;
    transition: 0.3s;
    box-shadow: 0 5px 15px rgba(15, 118, 110, 0.18);
}

.back-btn:hover {
    background: #115e59;
    transform: translateY(-2px);
}

/* ================= RESPONSIVE ================= */

@media (max-width: 650px) {

    .top-header {
        padding: 16px 20px;
    }

    .container {
        width: 92%;
        margin: 30px auto;
    }

    .header {
        padding: 25px 22px;
    }

    .header h1 {
        font-size: 23px;
    }

    .question-card {
        padding: 21px;
    }

    .question-row {
        flex-direction: column;
        gap: 5px;
    }

}

</style>

</head>

<body>

<!-- ================= TOP HEADER ================= -->

<div class="top-header">

    <div class="logo">
        💼 Job<span>Portal</span>
    </div>

    <a
        class="home-link"
        href="${pageContext.request.contextPath}/previousDrives">

        ← Previous Drives

    </a>

</div>


<!-- ================= MAIN ================= -->

<div class="container">

    <div class="header">

        <h1>
            📚 Previous Placement Drive Questions
        </h1>

        <p>
            Review interview and assessment questions added by the administrator.
        </p>

    </div>


    <!-- ================= QUESTIONS ================= -->

    <c:choose>

        <c:when test="${not empty questions}">

            <c:forEach
                var="q"
                items="${questions}"
                varStatus="status">

                <div class="question-card">

                    <div class="category">
                        ${q.category}
                    </div>

                    <div class="question-row">

                        <span class="question-number">
                            Question ${status.index + 1}:
                        </span>

                        <span class="question-text">
                            ${q.question}
                        </span>

                    </div>

                </div>

            </c:forEach>

        </c:when>


        <c:otherwise>

            <div class="no-data">

                <div class="empty-icon">
                    📭
                </div>

                <h2>
                    No Questions Available
                </h2>

                <p>
                    No questions have been added for this placement drive yet.
                </p>

            </div>

        </c:otherwise>

    </c:choose>


    <!-- ================= BACK ================= -->

    <a
        class="back-btn"
        href="${pageContext.request.contextPath}/previousDrives">

        ← Back to Previous Drives

    </a>

</div>

</body>

</html>

