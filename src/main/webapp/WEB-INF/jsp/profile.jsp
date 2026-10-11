
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>My Profile | Job Portal</title>


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

            min-height: 100vh;

            font-family:
                "Segoe UI",
                Arial,
                sans-serif;

            display: flex;

            justify-content: center;

            align-items: center;

            padding: 30px;

            background:

                radial-gradient(
                    circle at 10% 15%,
                    rgba(45, 212, 191, 0.20),
                    transparent 25%
                ),

                radial-gradient(
                    circle at 90% 85%,
                    rgba(20, 184, 166, 0.18),
                    transparent 28%
                ),

                linear-gradient(
                    135deg,
                    #020617,
                    #0f172a 48%,
                    #134e4a
                );

            position: relative;

            overflow: hidden;
        }


        /* =========================
           BACKGROUND DECORATION
        ========================= */

        body::before {

            content: "";

            position: absolute;

            width: 320px;

            height: 320px;

            top: -160px;

            right: -100px;

            background:
                rgba(45, 212, 191, 0.12);

            border-radius: 50%;

            filter: blur(10px);
        }


        body::after {

            content: "";

            position: absolute;

            width: 280px;

            height: 280px;

            bottom: -150px;

            left: -100px;

            background:
                rgba(20, 184, 166, 0.10);

            border-radius: 50%;

            filter: blur(10px);
        }


        /* =========================
           PROFILE CARD
        ========================= */

        .container {

            width: 510px;

            max-width: 100%;

            padding: 45px 42px;

            background:
                rgba(255, 255, 255, 0.97);

            border-radius: 28px;

            text-align: center;

            position: relative;

            z-index: 2;

            overflow: hidden;

            border:
                1px solid
                rgba(255, 255, 255, 0.8);

            box-shadow:

                0 30px 70px
                rgba(0, 0, 0, 0.35),

                0 0 40px
                rgba(20, 184, 166, 0.08);

            animation:
                profileEnter 0.7s ease;
        }


        /* =========================
           TOP COLOR LINE
        ========================= */

        .container::before {

            content: "";

            position: absolute;

            top: 0;

            left: 0;

            width: 100%;

            height: 6px;

            background:

                linear-gradient(
                    90deg,
                    #0f766e,
                    #14b8a6,
                    #5eead4,
                    #14b8a6,
                    #0f766e
                );
        }


        /* =========================
           PROFILE ICON
        ========================= */

        .icon {

            width: 118px;

            height: 118px;

            margin:
                4px auto 22px;

            border-radius: 50%;

            display: flex;

            justify-content: center;

            align-items: center;

            font-size: 60px;

            background:

                linear-gradient(
                    145deg,
                    #ccfbf1,
                    #99f6e4
                );

            border:
                7px solid white;

            box-shadow:

                0 12px 30px
                rgba(15, 118, 110, 0.25),

                0 0 0 6px
                rgba(20, 184, 166, 0.08);

            position: relative;

            transition:
                0.35s ease;
        }


        .icon:hover {

            transform:
                scale(1.05)
                translateY(-4px);

            box-shadow:

                0 18px 38px
                rgba(15, 118, 110, 0.30),

                0 0 0 7px
                rgba(20, 184, 166, 0.10);
        }


        /* Online indicator */

        .icon::after {

            content: "";

            position: absolute;

            right: 3px;

            bottom: 7px;

            width: 19px;

            height: 19px;

            background: #14b8a6;

            border-radius: 50%;

            border:
                4px solid white;

            box-shadow:
                0 3px 10px
                rgba(0, 0, 0, 0.18);
        }


        /* =========================
           TITLE
        ========================= */

        h1 {

            color: #0f172a;

            font-size: 31px;

            font-weight: 800;

            letter-spacing: -0.5px;
        }


        h1::after {

            content: "";

            display: block;

            width: 58px;

            height: 4px;

            margin:
                11px auto 0;

            border-radius: 10px;

            background:

                linear-gradient(
                    90deg,
                    #0f766e,
                    #14b8a6
                );
        }


        /* =========================
           PROFILE INFORMATION
        ========================= */

        .info {

            margin-top: 30px;

            text-align: left;

            padding: 22px;

            background:

                linear-gradient(
                    145deg,
                    #f8fafc,
                    #f0fdfa
                );

            border:
                1px solid #dbeafe;

            border-radius: 17px;

            font-size: 16px;

            line-height: 2;

            box-shadow:

                inset 0 1px 0
                rgba(255,255,255,0.8);
        }


        .info b {

            display: inline-block;

            width: 85px;

            color: #64748b;

            font-size: 13px;

            font-weight: 800;

            text-transform: uppercase;

            letter-spacing: 0.4px;
        }


        .info br {

            line-height: 2.5;
        }


        /* =========================
           DASHBOARD BUTTON
        ========================= */

        .btn {

            display: inline-flex;

            justify-content: center;

            align-items: center;

            min-width: 205px;

            margin-top: 28px;

            padding: 14px 25px;

            background:

                linear-gradient(
                    135deg,
                    #14b8a6,
                    #0f766e
                );

            color: white;

            text-decoration: none;

            border-radius: 12px;

            font-size: 15px;

            font-weight: 800;

            letter-spacing: 0.2px;

            box-shadow:

                0 10px 24px
                rgba(15, 118, 110, 0.28);

            transition:
                all 0.3s ease;
        }


        .btn:hover {

            transform:
                translateY(-4px);

            background:

                linear-gradient(
                    135deg,
                    #0f766e,
                    #115e59
                );

            box-shadow:

                0 16px 32px
                rgba(15, 118, 110, 0.36);
        }


        .btn:active {

            transform:
                translateY(-1px);
        }


        /* =========================
           ANIMATION
        ========================= */

        @keyframes profileEnter {

            from {

                opacity: 0;

                transform:
                    translateY(35px)
                    scale(0.96);
            }

            to {

                opacity: 1;

                transform:
                    translateY(0)
                    scale(1);
            }
        }


        /* =========================
           RESPONSIVE
        ========================= */

        @media (max-width: 600px) {

            body {

                padding: 20px;
            }


            .container {

                padding:
                    38px 23px;

                border-radius: 23px;
            }


            .icon {

                width: 105px;

                height: 105px;

                font-size: 54px;
            }


            h1 {

                font-size: 27px;
            }


            .info {

                padding: 18px;

                font-size: 14px;
            }


            .info b {

                width: 75px;
            }


            .btn {

                width: 100%;
            }
        }

    </style>

</head>


<body>


    <!-- =========================
         PROFILE CARD
    ========================= -->

    <div class="container">


        <!-- PROFILE ICON -->

        <div class="icon">
            👤
        </div>


        <!-- TITLE -->

        <h1>
            My Profile
        </h1>


        <!-- USER INFORMATION -->

        <div class="info">

            <b>Name:</b>
            Job Seeker

            <br>

            <b>Email:</b>
            user@example.com

            <br>

            <b>Role:</b>
            Job Seeker

        </div>


        <!-- DASHBOARD BUTTON -->

        <a
            class="btn"
            href="${pageContext.request.contextPath}/dashboard">

            ← Back to Dashboard

        </a>


    </div>


</body>

</html>

