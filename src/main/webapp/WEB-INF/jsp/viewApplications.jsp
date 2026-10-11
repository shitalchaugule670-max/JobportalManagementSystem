<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
    uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>View Applications</title>

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f7fb;
            color: #333;
            min-height: 100vh;
        }

        .header {
            background: linear-gradient(135deg, #1a237e, #3949ab);
            color: white;
            padding: 22px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.15);
        }

        .header h1 {
            font-size: 26px;
        }

        .back-btn {
            text-decoration: none;
            color: white;
            background: rgba(255, 255, 255, 0.18);
            padding: 10px 18px;
            border-radius: 8px;
            font-size: 14px;
        }

        .back-btn:hover {
            background: rgba(255, 255, 255, 0.30);
        }

        .container {
            width: 90%;
            max-width: 1100px;
            margin: 35px auto;
        }

        .page-title {
            text-align: center;
            margin-bottom: 25px;
        }

        .page-title h2 {
            color: #1a237e;
            font-size: 28px;
            margin-bottom: 8px;
        }

        .page-title p {
            color: #666;
            font-size: 15px;
        }

        .message {
            padding: 14px;
            margin-bottom: 20px;
            border-radius: 8px;
            text-align: center;
            font-weight: bold;
        }

        .success {
            background: #d4edda;
            color: #155724;
        }

        .error {
            background: #f8d7da;
            color: #721c24;
        }

        .card {
            background: white;
            border-radius: 14px;
            padding: 25px;
            margin-bottom: 22px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
            border-left: 5px solid #3949ab;
        }

        .card h2 {
            color: #1a237e;
            margin-bottom: 20px;
            font-size: 23px;
        }

        .info {
            display: flex;
            padding: 10px 0;
            border-bottom: 1px solid #eeeeee;
            font-size: 15px;
        }

        .info b {
            width: 150px;
            color: #444;
        }

        .info span {
            color: #555;
        }

        .status-box {
            margin-top: 18px;
            padding: 13px;
            background: #f5f7ff;
            border-radius: 8px;
        }

        .status {
            font-weight: bold;
            color: #1a237e;
        }

        .update-form {
            margin-top: 20px;
            display: flex;
            align-items: center;
            gap: 12px;
            flex-wrap: wrap;
        }

        .update-form label {
            font-weight: bold;
            color: #444;
        }

        .update-form select {
            padding: 10px 14px;
            border: 1px solid #bbb;
            border-radius: 7px;
            background: white;
            font-size: 14px;
            min-width: 160px;
        }

        .update-btn {
            padding: 10px 18px;
            border: none;
            border-radius: 7px;
            background: #3949ab;
            color: white;
            cursor: pointer;
            font-weight: bold;
        }

        .update-btn:hover {
            background: #1a237e;
        }

        .no-applications {
            background: white;
            padding: 50px;
            text-align: center;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
        }

        .no-applications h3 {
            color: #555;
            margin-bottom: 10px;
        }

        .no-applications p {
            color: #888;
        }

        @media (max-width: 700px) {

            .header {
                padding: 18px;
                flex-direction: column;
                gap: 12px;
            }

            .container {
                width: 94%;
            }

            .info {
                flex-direction: column;
                gap: 5px;
            }

            .info b {
                width: auto;
            }

            .update-form {
                flex-direction: column;
                align-items: stretch;
            }

            .update-form select,
            .update-btn {
                width: 100%;
            }

        }

    </style>

</head>

<body>

    <div class="header">

        <h1>Admin Panel</h1>

        <!-- Correct Admin Dashboard URL -->
        <a href="${pageContext.request.contextPath}/admin"
           class="back-btn">
            ← Back to Dashboard
        </a>

    </div>


    <div class="container">

        <div class="page-title">

            <h2>Job Applications</h2>

            <p>
                View and manage all student job applications
            </p>

        </div>


        <!-- Success Message -->

        <c:if test="${not empty success}">

            <div class="message success">
                ${success}
            </div>

        </c:if>


        <!-- Error Message -->

        <c:if test="${not empty error}">

            <div class="message error">
                ${error}
            </div>

        </c:if>


        <c:choose>

            <c:when test="${not empty applications}">

                <c:forEach
                    var="application"
                    items="${applications}">

                    <div class="card">

                        <h2>
                            ${application.jobTitle}
                        </h2>


                        <div class="info">

                            <b>Student Name:</b>

                            <span>
                                ${application.userName}
                            </span>

                        </div>


                        <div class="info">

                            <b>Email:</b>

                            <span>
                                ${application.userEmail}
                            </span>

                        </div>


                        <div class="info">

                            <b>Job Title:</b>

                            <span>
                                ${application.jobTitle}
                            </span>

                        </div>


                        <div class="info">

                            <b>Company:</b>

                            <span>
                                ${application.company}
                            </span>

                        </div>


                        <div class="info">

                            <b>Applied Date:</b>

                            <span>
                                ${application.applyDate}
                            </span>

                        </div>


                        <div class="status-box">

                            <span class="status">

                                Current Status:
                                ${application.status}

                            </span>

                        </div>


                        <!-- Update Application Status -->

                        <form
                            method="post"
                            action="${pageContext.request.contextPath}/admin/update-application-status"
                            class="update-form">


                            <input
                                type="hidden"
                                name="applicationId"
                                value="${application.applicationId}">


                            <label for="status">

                                Change Status:

                            </label>


                            <select
                                name="status"
                                id="status">


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


                            <button
                                type="submit"
                                class="update-btn">

                                Update Status

                            </button>


                        </form>

                    </div>

                </c:forEach>

            </c:when>


            <c:otherwise>

                <div class="no-applications">

                    <h3>
                        No Applications Found
                    </h3>

                    <p>
                        There are currently no job applications.
                    </p>

                </div>

            </c:otherwise>

        </c:choose>


    </div>

</body>

</html>