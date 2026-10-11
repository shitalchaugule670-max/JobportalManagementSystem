<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Job Portal | Login</title>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
      rel="stylesheet">


<style>

/* ================= GLOBAL ================= */

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {

    min-height: 100vh;

    font-family: 'Inter', sans-serif;

    display: flex;

    justify-content: center;

    align-items: center;

    background:

        radial-gradient(
            circle at 15% 20%,
            rgba(45,212,191,0.15),
            transparent 30%
        ),

        radial-gradient(
            circle at 85% 80%,
            rgba(99,102,241,0.13),
            transparent 30%
        ),

        linear-gradient(
            135deg,
            #07111f,
            #0d1b2e 50%,
            #101b35
        );

    color: #ffffff;

    position: relative;

    overflow: hidden;
}


/* ================= BACKGROUND EFFECTS ================= */

body::before {

    content: "";

    position: absolute;

    width: 350px;

    height: 350px;

    border-radius: 50%;

    background: rgba(45,212,191,0.06);

    top: -120px;

    left: -100px;

    filter: blur(5px);
}


body::after {

    content: "";

    position: absolute;

    width: 300px;

    height: 300px;

    border-radius: 50%;

    background: rgba(99,102,241,0.07);

    right: -100px;

    bottom: -100px;

    filter: blur(5px);
}


/* ================= LOGIN CONTAINER ================= */

.login-box {

    width: 410px;

    padding: 42px 40px;

    background: rgba(255,255,255,0.065);

    border: 1px solid rgba(255,255,255,0.12);

    border-radius: 24px;

    backdrop-filter: blur(20px);

    box-shadow:

        0 25px 70px rgba(0,0,0,0.40),

        inset 0 1px 0 rgba(255,255,255,0.05);

    position: relative;

    z-index: 2;

    animation: loginAppear 0.6s ease;
}


@keyframes loginAppear {

    from {

        opacity: 0;

        transform: translateY(20px) scale(0.98);

    }

    to {

        opacity: 1;

        transform: translateY(0) scale(1);

    }
}


/* ================= LOGO ================= */

.logo {

    width: 62px;

    height: 62px;

    margin: 0 auto 20px;

    display: flex;

    align-items: center;

    justify-content: center;

    border-radius: 18px;

    background: linear-gradient(
        135deg,
        #2dd4bf,
        #14b8a6
    );

    font-size: 30px;

    box-shadow:
        0 12px 30px rgba(20,184,166,0.25);
}


/* ================= TITLE ================= */

h1 {

    text-align: center;

    font-size: 28px;

    font-weight: 800;

    letter-spacing: -0.7px;

    margin-bottom: 9px;
}


h1 span {

    color: #2dd4bf;
}


.subtitle {

    text-align: center;

    color: #91a4b8;

    font-size: 14px;

    margin-bottom: 32px;
}


/* ================= FORM ================= */

.form-group {

    margin-bottom: 20px;
}


label {

    display: block;

    color: #dce8f5;

    font-size: 13px;

    font-weight: 600;

    margin-bottom: 8px;
}


.input-wrapper {

    position: relative;
}


.input-icon {

    position: absolute;

    left: 15px;

    top: 50%;

    transform: translateY(-50%);

    font-size: 16px;

    opacity: 0.75;

    pointer-events: none;
}


input {

    width: 100%;

    height: 50px;

    padding: 0 15px 0 45px;

    border-radius: 11px;

    border: 1px solid rgba(255,255,255,0.11);

    background: rgba(5,15,27,0.55);

    color: #ffffff;

    font-family: 'Inter', sans-serif;

    font-size: 14px;

    outline: none;

    transition: 0.3s;
}


input::placeholder {

    color: #63778b;
}


input:focus {

    border-color: #2dd4bf;

    box-shadow:
        0 0 0 3px rgba(45,212,191,0.09);

    background: rgba(5,15,27,0.75);
}


/* ================= BUTTON ================= */

button {

    width: 100%;

    height: 51px;

    margin-top: 7px;

    border: none;

    border-radius: 11px;

    background: linear-gradient(
        135deg,
        #14b8a6,
        #2dd4bf
    );

    color: #06221f;

    font-family: 'Inter', sans-serif;

    font-size: 14px;

    font-weight: 800;

    cursor: pointer;

    transition: 0.3s;

    box-shadow:
        0 10px 25px rgba(20,184,166,0.18);
}


button:hover {

    transform: translateY(-2px);

    box-shadow:
        0 14px 30px rgba(45,212,191,0.25);
}


button:active {

    transform: translateY(0);
}


/* ================= FOOTER ================= */

.login-footer {

    text-align: center;

    margin-top: 28px;

    padding-top: 20px;

    border-top: 1px solid rgba(255,255,255,0.07);

    color: #63778b;

    font-size: 11px;
}


/* ================= RESPONSIVE ================= */

@media(max-width: 500px) {

    body {

        padding: 20px;
    }

    .login-box {

        width: 100%;

        padding: 35px 25px;

        border-radius: 20px;
    }
}

</style>

</head>


<body>


<div class="login-box">


    <!-- LOGO -->

    <div class="logo">

        💼

    </div>


    <!-- TITLE -->

    <h1>

        Job<span>Portal</span>

    </h1>


    <div class="subtitle">

        Sign in to continue to your account

    </div>


    <!-- LOGIN FORM -->

    <form action="${pageContext.request.contextPath}/login"
          method="post">


        <!-- EMAIL -->

        <div class="form-group">

            <label>

                Email Address

            </label>


            <div class="input-wrapper">

                <span class="input-icon">

                    ✉️

                </span>


                <input
                    type="email"
                    name="email"
                    placeholder="Enter your email"
                    required>

            </div>

        </div>


        <!-- PASSWORD -->

        <div class="form-group">

            <label>

                Password

            </label>


            <div class="input-wrapper">

                <span class="input-icon">

                    🔒

                </span>


                <input
                    type="password"
                    name="password"
                    placeholder="Enter your password"
                    required>

            </div>

        </div>


        <!-- LOGIN BUTTON -->

        <button type="submit">

            Login to Portal →

        </button>


    </form>


    <!-- FOOTER -->

    <div class="login-footer">

        © 2026 Job Portal Management System

    </div>


</div>


</body>

</html>