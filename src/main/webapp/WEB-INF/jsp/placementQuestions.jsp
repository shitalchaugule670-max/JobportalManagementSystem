<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
uri="jakarta.tags.core" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Placement Questions</title>

<style>

body {
    margin: 0;
    padding: 0;
    font-family: "Segoe UI", Arial, sans-serif;
    background: #f4f7fb;
    color: #1e293b;
}

.container {
    width: 85%;
    max-width: 900px;
    margin: 45px auto;
}

.header {
    background: linear-gradient(135deg, #2563eb, #1d4ed8);
    color: white;
    padding: 30px;
    border-radius: 18px;
    margin-bottom: 25px;
}

.header h1 {
    margin: 0 0 8px;
}

.header p {
    margin: 0;
    opacity: 0.9;
}

.question-card {
    background: white;
    padding: 20px 25px;
    margin-bottom: 15px;
    border-radius: 14px;
    border: 1px solid #e5e7eb;
    box-shadow: 0 6px 18px rgba(15, 23, 42, 0.06);
}

.question-number {
    color: #2563eb;
    font-weight: 700;
    margin-right: 8px;
}

.category {
    display: inline-block;
    background: #eff6ff;
    color: #2563eb;
    padding: 5px 10px;
    border-radius: 6px;
    font-size: 12px;
    margin-bottom: 8px;
}

.question-text {
    color: #334155;
    font-size: 16px;
}

.no-data {
    background: white;
    padding: 30px;
    border-radius: 15px;
    text-align: center;
    color: #64748b;
}

.back-btn {
    display: inline-block;
    margin-top: 15px;
    padding: 11px 20px;
    background: #2563eb;
    color: white;
    text-decoration: none;
    border-radius: 8px;
    font-weight: 600;
}

.back-btn:hover {
    background: #1d4ed8;
}

</style>

</head>

<body>

<div class="container">

```
<div class="header">

    <h1>
        Previous Placement Drive Questions
    </h1>

    <p>
        Questions added by the administrator
    </p>

</div>


<!-- ================= QUESTIONS ================= -->

<c:choose>

    <c:when test="${not empty questions}">

        <c:forEach var="question"
                   items="${questions}"
                   varStatus="status">

            <div class="question-card">

                <div class="category">
                    ${question.category}
                </div>

                <div>

                    <span class="question-number">
                        Question ${status.index + 1}:
                    </span>

                    <span class="question-text">
                        ${question.question}
                    </span>

                </div>

            </div>

        </c:forEach>

    </c:when>


    <c:otherwise>

        <div class="no-data">

            <h2>
                No Questions Available
            </h2>

            <p>
                No questions have been added for this placement drive yet.
            </p>

        </div>

    </c:otherwise>

</c:choose>


<a class="back-btn"
   href="${pageContext.request.contextPath}/previousDrives">

    ← Back to Previous Drives

</a>


</div>

</body>

</html>
