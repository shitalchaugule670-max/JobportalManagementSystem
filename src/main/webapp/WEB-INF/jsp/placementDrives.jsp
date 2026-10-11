
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
    uri="jakarta.tags.core"%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Placement Drives | Admin</title>


    <style>

        /* =========================
           RESET
        ========================= */

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }


        /* =========================
           BODY
        ========================= */

        body {

            font-family:
                "Segoe UI",
                Arial,
                sans-serif;

            min-height: 100vh;

            color: #1e293b;

            background:

                radial-gradient(
                    circle at 5% 10%,
                    rgba(45, 212, 191, 0.16),
                    transparent 25%
                ),

                radial-gradient(
                    circle at 95% 90%,
                    rgba(20, 184, 166, 0.12),
                    transparent 25%
                ),

                linear-gradient(
                    135deg,
                    #020617,
                    #0f172a 48%,
                    #134e4a
                );
        }


        /* =========================
           HEADER
        ========================= */

        .header {

            background:
                rgba(255,255,255,0.97);

            padding:
                18px 55px;

            display: flex;

            justify-content:
                space-between;

            align-items: center;

            position: sticky;

            top: 0;

            z-index: 100;

            box-shadow:
                0 8px 30px
                rgba(0,0,0,0.20);

            border-bottom:
                1px solid
                rgba(20,184,166,0.15);
        }


        .header h1 {

            margin: 0;

            color: #0f172a;

            font-size: 28px;

            font-weight: 800;

            letter-spacing: 0.3px;
        }


        .header h1::first-letter {
            color: #0f766e;
        }


        /* =========================
           BACK BUTTON
        ========================= */

        .back {

            display: inline-flex;

            align-items: center;

            justify-content: center;

            text-decoration: none;

            background:
                linear-gradient(
                    135deg,
                    #14b8a6,
                    #0f766e
                );

            color: white;

            padding:
                11px 20px;

            border-radius: 11px;

            font-weight: 700;

            box-shadow:
                0 7px 18px
                rgba(15,118,110,0.25);

            transition:
                all 0.3s ease;
        }


        .back:hover {

            transform:
                translateY(-3px);

            box-shadow:
                0 12px 25px
                rgba(15,118,110,0.35);
        }


        /* =========================
           MAIN CONTAINER
        ========================= */

        .container {

            width: 90%;

            max-width: 1150px;

            margin:
                45px auto;
        }


        /* =========================
           TOP SECTION
        ========================= */

        .top {

            display: flex;

            justify-content:
                space-between;

            align-items: center;

            margin-bottom: 30px;
        }


        .top h2 {

            color: white;

            margin: 0;

            font-size: 30px;

            font-weight: 800;

            letter-spacing:
                0.3px;

            text-shadow:
                0 3px 15px
                rgba(0,0,0,0.25);
        }


        /* =========================
           ADD BUTTON
        ========================= */

        .add-btn {

            display: inline-flex;

            align-items: center;

            justify-content: center;

            text-decoration: none;

            background:
                linear-gradient(
                    135deg,
                    #14b8a6,
                    #0f766e
                );

            color: white;

            padding:
                13px 22px;

            border-radius: 12px;

            font-weight: 800;

            box-shadow:
                0 10px 25px
                rgba(20,184,166,0.25);

            transition:
                all 0.3s ease;
        }


        .add-btn:hover {

            transform:
                translateY(-4px);

            box-shadow:
                0 15px 30px
                rgba(20,184,166,0.35);
        }


        /* =========================
           DRIVE CARD
        ========================= */

        .drive-card {

            background:
                rgba(255,255,255,0.98);

            border-radius: 22px;

            padding: 30px;

            margin-bottom: 26px;

            position: relative;

            overflow: hidden;

            border:
                1px solid
                rgba(255,255,255,0.7);

            box-shadow:
                0 18px 45px
                rgba(0,0,0,0.22);

            transition:
                all 0.35s ease;
        }


        /* Left accent */

        .drive-card::before {

            content: "";

            position: absolute;

            left: 0;

            top: 0;

            width: 5px;

            height: 100%;

            background:
                linear-gradient(
                    to bottom,
                    #14b8a6,
                    #0f766e
                );
        }


        /* Top shine */

        .drive-card::after {

            content: "";

            position: absolute;

            top: 0;

            right: 0;

            width: 180px;

            height: 180px;

            background:
                radial-gradient(
                    circle,
                    rgba(20,184,166,0.08),
                    transparent 70%
                );

            pointer-events: none;
        }


        .drive-card:hover {

            transform:
                translateY(-6px);

            box-shadow:
                0 25px 55px
                rgba(0,0,0,0.28);
        }


        /* =========================
           DRIVE HEADER
        ========================= */

        .drive-header {

            display: flex;

            justify-content:
                space-between;

            align-items: center;

            gap: 15px;

            margin-bottom: 20px;
        }


        .drive-header h3 {

            margin: 0;

            color: #0f172a;

            font-size: 25px;

            font-weight: 800;
        }


        /* =========================
           YEAR BADGE
        ========================= */

        .year {

            background:
                linear-gradient(
                    135deg,
                    #ccfbf1,
                    #f0fdfa
                );

            color: #0f766e;

            padding:
                8px 17px;

            border-radius: 25px;

            font-weight: 800;

            border:
                1px solid #99f6e4;

            white-space: nowrap;

            box-shadow:
                0 5px 12px
                rgba(15,118,110,0.08);
        }


        /* =========================
           INFORMATION GRID
        ========================= */

        .info {

            display: grid;

            grid-template-columns:
                repeat(3, 1fr);

            gap: 15px;

            margin:
                22px 0;
        }


        .info-box {

            background:
                linear-gradient(
                    145deg,
                    #f8fafc,
                    #f0fdfa
                );

            padding: 18px;

            border-radius: 14px;

            border:
                1px solid #e2e8f0;

            color: #0f172a;

            font-size: 15px;

            font-weight: 600;

            transition:
                all 0.25s ease;
        }


        .info-box:hover {

            transform:
                translateY(-3px);

            background:
                linear-gradient(
                    145deg,
                    #f0fdfa,
                    #ccfbf1
                );

            border-color:
                #99f6e4;

            box-shadow:
                0 8px 20px
                rgba(15,118,110,0.08);
        }


        .info-box strong {

            display: block;

            color: #64748b;

            margin-bottom: 7px;

            font-size: 12px;

            text-transform:
                uppercase;

            letter-spacing:
                0.6px;

            font-weight: 800;
        }


        /* =========================
           DESCRIPTION
        ========================= */

        .description {

            color: #475569;

            line-height: 1.7;

            background:
                #f8fafc;

            padding:
                17px 19px;

            border-radius: 13px;

            border-left:
                4px solid #14b8a6;

            margin-top: 8px;

            font-size: 15px;
        }


        .description strong {

            color: #0f172a;

            display: block;

            margin-bottom: 4px;
        }


        /* =========================
           BUTTONS
        ========================= */

        .question-btn,
        .view-btn {

            display: inline-flex;

            align-items: center;

            justify-content: center;

            margin-top: 19px;

            text-decoration: none;

            color: white;

            padding:
                11px 19px;

            border-radius: 11px;

            font-weight: 750;

            transition:
                all 0.3s ease;
        }


        /* Add Question */

        .question-btn {

            background:
                linear-gradient(
                    135deg,
                    #0f766e,
                    #115e59
                );

            box-shadow:
                0 7px 17px
                rgba(15,118,110,0.22);
        }


        .question-btn:hover {

            transform:
                translateY(-3px);

            box-shadow:
                0 11px 23px
                rgba(15,118,110,0.32);
        }


        /* View Questions */

        .view-btn {

            margin-left: 10px;

            background:
                linear-gradient(
                    135deg,
                    #334155,
                    #1e293b
                );

            box-shadow:
                0 7px 17px
                rgba(30,41,59,0.22);
        }


        .view-btn:hover {

            transform:
                translateY(-3px);

            box-shadow:
                0 11px 23px
                rgba(30,41,59,0.32);
        }


        /* =========================
           EMPTY STATE
        ========================= */

        .empty {

            background:
                rgba(255,255,255,0.98);

            padding:
                60px 30px;

            text-align: center;

            border-radius: 22px;

            color: #64748b;

            box-shadow:
                0 18px 40px
                rgba(0,0,0,0.20);
        }


        .empty h3 {

            margin-top: 0;

            color: #0f172a;

            font-size: 24px;

            margin-bottom: 10px;
        }


        .empty p {

            margin-bottom: 0;

            font-size: 15px;
        }


        /* =========================
           RESPONSIVE TABLET
        ========================= */

        @media (max-width: 900px) {

            .header {

                padding:
                    17px 25px;
            }


            .container {

                width: 94%;
            }


            .info {

                grid-template-columns:
                    repeat(2, 1fr);
            }
        }


        /* =========================
           RESPONSIVE MOBILE
        ========================= */

        @media (max-width: 650px) {

            .header {

                flex-direction:
                    column;

                gap: 15px;

                text-align: center;
            }


            .header h1 {

                font-size: 24px;
            }


            .top {

                flex-direction:
                    column;

                gap: 18px;

                text-align: center;
            }


            .top h2 {

                font-size: 25px;
            }


            .add-btn {

                width: 100%;
            }


            .info {

                grid-template-columns: 1fr;
            }


            .drive-card {

                padding: 23px;
            }


            .drive-header {

                flex-direction:
                    column;

                align-items:
                    flex-start;
            }


            .question-btn,
            .view-btn {

                display: flex;

                width: 100%;

                margin-left: 0;

                text-align: center;
            }


            .view-btn {

                margin-top: 10px;
            }
        }

    </style>

</head>


<body>


    <!-- =========================
         HEADER
    ========================= -->

    <div class="header">

        <h1>
            💼 Job Portal
        </h1>


        <a
            class="back"
            href="${pageContext.request.contextPath}/admin">

            ← Admin Dashboard

        </a>

    </div>



    <!-- =========================
         MAIN CONTAINER
    ========================= -->

    <div class="container">


        <!-- TOP -->

        <div class="top">

            <h2>
                📊 Placement Drives
            </h2>


            <a
                class="add-btn"
                href="${pageContext.request.contextPath}/admin/placement-drives/add">

                ➕ Add Placement Drive

            </a>

        </div>



        <!-- =========================
             EMPTY STATE
        ========================= -->

        <c:if test="${empty drives}">

            <div class="empty">

                <h3>
                    📭 No Placement Drives Added
                </h3>

                <p>
                    Click "Add Placement Drive"
                    to add previous college placement records.
                </p>

            </div>

        </c:if>



        <!-- =========================
             PLACEMENT DRIVES
        ========================= -->

        <c:forEach
            var="drive"
            items="${drives}">


            <div class="drive-card">


                <!-- DRIVE HEADER -->

                <div class="drive-header">

                    <h3>
                        🏢 ${drive.companyName}
                    </h3>


                    <span class="year">
                        ${drive.driveYear}
                    </span>

                </div>



                <!-- INFORMATION -->

                <div class="info">


                    <div class="info-box">

                        <strong>
                            💼 Job Role
                        </strong>

                        ${drive.jobRole}

                    </div>



                    <div class="info-box">

                        <strong>
                            💰 Package
                        </strong>

                        ${drive.packageAmount}

                    </div>



                    <div class="info-box">

                        <strong>
                            📅 Drive Date
                        </strong>

                        ${drive.driveDate}

                    </div>



                    <div class="info-box">

                        <strong>
                            👨‍🎓 Students Appeared
                        </strong>

                        ${drive.studentsAppeared}

                    </div>



                    <div class="info-box">

                        <strong>
                            ✅ Students Selected
                        </strong>

                        ${drive.studentsSelected}

                    </div>


                </div>



                <!-- DESCRIPTION -->

                <div class="description">

                    <strong>
                        Description
                    </strong>

                    ${drive.description}

                </div>



                <!-- ADD QUESTION -->

                <a
                    class="question-btn"
                    href="${pageContext.request.contextPath}/admin/placement-questions/add?driveId=${drive.driveId}">

                    ➕ Add Interview Question

                </a>



                <!-- VIEW QUESTIONS -->

                <a
                    class="view-btn"
                    href="${pageContext.request.contextPath}/admin/placement-questions?driveId=${drive.driveId}">

                    📖 View Questions

                </a>


            </div>


        </c:forEach>


    </div>


</body>

</html>

