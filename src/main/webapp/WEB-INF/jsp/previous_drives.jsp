<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>

<html>

<head>


<meta charset="UTF-8">

<title>Previous Placement Drives | Job Portal</title>

<style>

    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background:
            radial-gradient(circle at top left, #ccfbf1 0%, transparent 35%),
            linear-gradient(135deg, #0f172a, #164e63, #0f766e);
        min-height: 100vh;
        color: #1e293b;
        padding: 35px 20px;
    }

    .container {
        width: 92%;
        max-width: 1150px;
        margin: 0 auto;
    }

    .header {
        background: rgba(255, 255, 255, 0.97);
        padding: 32px 38px;
        border-radius: 24px;
        margin-bottom: 30px;
        box-shadow: 0 18px 45px rgba(0, 0, 0, 0.20);
        position: relative;
        overflow: hidden;
    }

    .header::before {
        content: "";
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 6px;
        background: linear-gradient(
            90deg,
            #14b8a6,
            #0f766e,
            #2dd4bf
        );
    }

    .header h1 {
        margin: 0 0 10px;
        color: #0f172a;
        font-size: 32px;
        font-weight: 800;
    }

    .header p {
        margin: 0;
        color: #64748b;
        font-size: 16px;
    }

    .drive-card {
        background: rgba(255, 255, 255, 0.98);
        padding: 30px;
        margin-bottom: 22px;
        border-radius: 20px;
        border: 1px solid rgba(255,255,255,0.7);
        box-shadow: 0 15px 40px rgba(0, 0, 0, 0.18);
        position: relative;
        overflow: hidden;
        transition: all 0.3s ease;
    }

    .drive-card::before {
        content: "";
        position: absolute;
        left: 0;
        top: 0;
        width: 5px;
        height: 100%;
        background: linear-gradient(
            to bottom,
            #14b8a6,
            #0f766e
        );
    }

    .drive-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 22px 48px rgba(0, 0, 0, 0.24);
    }

    .drive-top {
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 20px;
        margin-bottom: 22px;
    }

    .company {
        margin: 0;
        color: #0f172a;
        font-size: 25px;
        font-weight: 800;
    }

    .year {
        background: #ecfeff;
        color: #0f766e;
        border: 1px solid #99f6e4;
        padding: 8px 17px;
        border-radius: 25px;
        font-size: 14px;
        font-weight: 800;
        white-space: nowrap;
    }

    .details {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 15px;
        margin-bottom: 20px;
    }

    .detail-box {
        background: #f8fafc;
        border: 1px solid #e2e8f0;
        border-radius: 13px;
        padding: 17px;
        transition: 0.25s ease;
    }

    .detail-box:hover {
        background: #f0fdfa;
        border-color: #99f6e4;
    }

    .detail-label {
        display: block;
        color: #64748b;
        font-size: 12px;
        font-weight: 800;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        margin-bottom: 6px;
    }

    .detail-value {
        color: #0f172a;
        font-size: 15px;
        font-weight: 700;
    }

    .description {
        background: #f8fafc;
        border-left: 4px solid #14b8a6;
        border-radius: 12px;
        padding: 17px 18px;
        color: #475569;
        line-height: 1.7;
        margin-bottom: 20px;
    }

    .description strong {
        color: #0f172a;
    }

    .btn {
        display: inline-block;
        padding: 12px 21px;
        background: linear-gradient(
            135deg,
            #14b8a6,
            #0f766e
        );
        color: white;
        text-decoration: none;
        border-radius: 10px;
        font-weight: 700;
        box-shadow: 0 7px 18px rgba(15, 118, 110, 0.25);
        transition: all 0.3s ease;
    }

    .btn:hover {
        transform: translateY(-3px);
        box-shadow: 0 11px 25px rgba(15, 118, 110, 0.35);
    }

    .no-data {
        background: rgba(255, 255, 255, 0.98);
        padding: 60px 30px;
        border-radius: 20px;
        text-align: center;
        box-shadow: 0 15px 40px rgba(0,0,0,0.18);
    }

    .no-data-icon {
        font-size: 55px;
        margin-bottom: 15px;
    }

    .no-data h2 {
        margin: 0 0 10px;
        color: #0f172a;
    }

    .no-data p {
        color: #64748b;
        margin: 0;
    }

    .back-btn {
        display: inline-block;
        margin-top: 10px;
        padding: 12px 20px;
        background: rgba(255,255,255,0.95);
        color: #0f766e;
        text-decoration: none;
        border-radius: 10px;
        font-weight: 700;
        box-shadow: 0 7px 18px rgba(0,0,0,0.15);
        transition: 0.3s ease;
    }

    .back-btn:hover {
        transform: translateY(-2px);
        background: white;
    }

    .bottom {
        text-align: center;
        margin-top: 25px;
    }

    @media (max-width: 850px) {

        .details {
            grid-template-columns: repeat(2, 1fr);
        }

    }

    @media (max-width: 600px) {

        body {
            padding: 20px 12px;
        }

        .container {
            width: 96%;
        }

        .header {
            padding: 27px 23px;
        }

        .header h1 {
            font-size: 26px;
        }

        .drive-card {
            padding: 23px;
        }

        .drive-top {
            flex-direction: column;
            align-items: flex-start;
        }

        .details {
            grid-template-columns: 1fr;
        }

        .company {
            font-size: 22px;
        }

        .btn {
            width: 100%;
            text-align: center;
        }

    }

</style>
```

</head>

<body>

<div class="container">

```
<div class="header">

    <h1>
        🎓 Previous Placement Drives
    </h1>

    <p>
        Explore previous campus placement drives and
        review their interview questions.
    </p>

</div>


<c:choose>

    <c:when test="${not empty drives}">

        <c:forEach var="drive" items="${drives}">

            <div class="drive-card">

                <div class="drive-top">

                    <h2 class="company">
                        🏢 ${drive.companyName}
                    </h2>

                    <span class="year">
                        📅 ${drive.driveYear}
                    </span>

                </div>


                <div class="details">

                    <div class="detail-box">

                        <span class="detail-label">
                            Job Role
                        </span>

                        <span class="detail-value">
                            💼 ${drive.jobRole}
                        </span>

                    </div>


                    <div class="detail-box">

                        <span class="detail-label">
                            Package
                        </span>

                        <span class="detail-value">
                            💰 ${drive.packageAmount}
                        </span>

                    </div>


                    <div class="detail-box">

                        <span class="detail-label">
                            Drive Date
                        </span>

                        <span class="detail-value">
                            📅 ${drive.driveDate}
                        </span>

                    </div>


                    <div class="detail-box">

                        <span class="detail-label">
                            Students Appeared
                        </span>

                        <span class="detail-value">
                            👥 ${drive.studentsAppeared}
                        </span>

                    </div>


                    <div class="detail-box">

                        <span class="detail-label">
                            Students Selected
                        </span>

                        <span class="detail-value">
                            ✅ ${drive.studentsSelected}
                        </span>

                    </div>

                </div>


                <div class="description">

                    <strong>
                        About the Drive
                    </strong>

                    <br>

                    ${drive.description}

                </div>


                <a class="btn"
                   href="${pageContext.request.contextPath}/placementQuestions?id=${drive.driveId}">

                    📚 View Interview Questions →

                </a>

            </div>

        </c:forEach>

    </c:when>


    <c:otherwise>

        <div class="no-data">

            <div class="no-data-icon">
                📭
            </div>

            <h2>
                No Previous Placement Drives
            </h2>

            <p>
                No placement drives have been added yet.
            </p>

        </div>

    </c:otherwise>

</c:choose>


<div class="bottom">

    <a class="back-btn"
       href="${pageContext.request.contextPath}/dashboard">

        ← Back to Dashboard

    </a>

</div>


</div>

</body>

</html>


