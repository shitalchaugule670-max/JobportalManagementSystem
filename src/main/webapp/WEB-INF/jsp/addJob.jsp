<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<title>Add Job | Job Portal</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    min-height: 100vh;

    font-family: 'Inter', sans-serif;

    background:
        radial-gradient(circle at 5% 10%, rgba(45,212,191,0.10), transparent 30%),
        radial-gradient(circle at 95% 20%, rgba(99,102,241,0.08), transparent 30%),
        #f5f8fc;

    color: #172033;
}

/* ================= TOP BAR ================= */

.topbar {

    height: 76px;

    padding: 0 6%;

    display: flex;
    align-items: center;
    justify-content: space-between;

    background: rgba(7,17,31,0.96);

    border-bottom: 1px solid rgba(255,255,255,0.08);

    box-shadow: 0 5px 25px rgba(0,0,0,0.12);
}

/* ================= LOGO ================= */

.logo {

    display: flex;
    align-items: center;

    gap: 11px;

    color: white;

    font-size: 22px;

    font-weight: 800;

    letter-spacing: -0.5px;
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

    box-shadow: 0 7px 18px rgba(20,184,166,0.22);
}

.logo span {
    color: #2dd4bf;
}

/* ================= BACK LINK ================= */

.back-link {

    display: inline-flex;

    align-items: center;

    gap: 7px;

    padding: 9px 14px;

    color: #aebdcd;

    text-decoration: none;

    border: 1px solid rgba(255,255,255,0.08);

    border-radius: 9px;

    font-size: 12px;

    font-weight: 600;

    transition: 0.3s;
}

.back-link:hover {

    color: #ffffff;

    border-color: rgba(45,212,191,0.35);

    background: rgba(45,212,191,0.08);
}

/* ================= CONTAINER ================= */

.container {

    width: 90%;

    max-width: 900px;

    margin: 0 auto;

    padding: 42px 0 55px;
}

/* ================= FORM CARD ================= */

.form-card {

    background: rgba(255,255,255,0.96);

    border: 1px solid #e3ebf2;

    border-radius: 23px;

    padding: 40px;

    box-shadow:
        0 18px 45px rgba(15,23,42,0.08);

    animation: appear 0.5s ease;
}

@keyframes appear {

    from {
        opacity: 0;
        transform: translateY(15px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }

}

/* ================= HEADING ================= */

.heading {

    display: flex;

    align-items: flex-start;

    gap: 16px;

    padding-bottom: 25px;

    margin-bottom: 27px;

    border-bottom: 1px solid #e8eef4;
}

.heading-icon {

    width: 52px;
    height: 52px;

    flex-shrink: 0;

    display: flex;
    align-items: center;
    justify-content: center;

    border-radius: 15px;

    background: linear-gradient(
        135deg,
        #e7faf7,
        #f2fcfb
    );

    border: 1px solid #d5f1ec;

    font-size: 24px;
}

.heading h1 {

    color: #14263a;

    font-size: 27px;

    font-weight: 800;

    margin-bottom: 7px;
}

.heading p {

    color: #718196;

    font-size: 13px;

    line-height: 1.6;
}

/* ================= MESSAGE ================= */

.success,
.error {

    padding: 13px 15px;

    border-radius: 10px;

    margin-bottom: 20px;

    font-size: 13px;

    font-weight: 600;
}

.success {

    background: #ecfdf7;

    color: #087f6c;

    border: 1px solid #b8eee4;
}

.error {

    background: #fff1f1;

    color: #b43e3e;

    border: 1px solid #f4caca;
}

/* ================= FORM GRID ================= */

.form-grid {

    display: grid;

    grid-template-columns: 1fr 1fr;

    gap: 22px;
}

.form-group {

    display: flex;

    flex-direction: column;
}

.full {

    grid-column: 1 / -1;
}

/* ================= LABEL ================= */

label {

    margin-bottom: 8px;

    color: #33475b;

    font-size: 13px;

    font-weight: 700;
}

/* ================= INPUT ================= */

input,
textarea {

    width: 100%;

    padding: 13px 14px;

    border: 1px solid #d9e2eb;

    border-radius: 10px;

    background: #fbfdff;

    color: #172033;

    font-family: 'Inter', sans-serif;

    font-size: 13px;

    outline: none;

    transition: 0.25s;
}

input {

    height: 48px;
}

input::placeholder,
textarea::placeholder {

    color: #9aaabc;
}

input:focus,
textarea:focus {

    border-color: #18b5a5;

    background: #ffffff;

    box-shadow:
        0 0 0 3px rgba(24,181,165,0.10);
}

textarea {

    min-height: 130px;

    resize: vertical;
}

/* ================= BUTTONS ================= */

.buttons {

    display: flex;

    align-items: center;

    gap: 12px;

    margin-top: 30px;

    padding-top: 25px;

    border-top: 1px solid #e8eef4;
}

.submit-btn {

    border: none;

    padding: 12px 23px;

    border-radius: 10px;

    background: linear-gradient(
        135deg,
        #119f90,
        #20bbaa
    );

    color: white;

    font-family: 'Inter', sans-serif;

    font-size: 13px;

    font-weight: 700;

    cursor: pointer;

    box-shadow:
        0 8px 18px rgba(20,184,166,0.18);

    transition: 0.3s;
}

.submit-btn:hover {

    transform: translateY(-2px);

    box-shadow:
        0 11px 24px rgba(20,184,166,0.25);
}

.cancel-btn {

    padding: 12px 23px;

    border-radius: 10px;

    background: #f1f4f7;

    color: #4d5e70;

    text-decoration: none;

    font-size: 13px;

    font-weight: 700;

    transition: 0.3s;
}

.cancel-btn:hover {

    background: #e5ebf0;

    transform: translateY(-2px);
}

/* ================= RESPONSIVE ================= */

@media(max-width: 700px) {

    .topbar {

        padding: 0 20px;
    }

    .container {

        width: 94%;

        padding-top: 25px;
    }

    .form-card {

        padding: 27px 22px;
    }

    .form-grid {

        grid-template-columns: 1fr;
    }

    .full {

        grid-column: auto;
    }

    .heading h1 {

        font-size: 23px;
    }

}

@media(max-width: 480px) {

    .logo {

        font-size: 18px;
    }

    .back-link {

        font-size: 11px;

        padding: 8px 10px;
    }

    .buttons {

        flex-direction: column;

        align-items: stretch;
    }

    .submit-btn,
    .cancel-btn {

        text-align: center;

        width: 100%;
    }

}

</style>

</head>

<body>

<!-- ================= TOP BAR ================= -->

<div class="topbar">

```
<div class="logo">

    <div class="logo-icon">
        💼
    </div>

    Job<span>Portal</span>

</div>

<a class="back-link"
   href="${pageContext.request.contextPath}/admin/jobs">

    ← Back to Manage Jobs

</a>
```

</div>

<!-- ================= FORM ================= -->

<div class="container">

```
<div class="form-card">

    <!-- HEADING -->

    <div class="heading">

        <div class="heading-icon">
            ➕
        </div>

        <div>

            <h1>
                Add New Job
            </h1>

            <p>
                Create and publish a new job opportunity
                for students and job seekers.
            </p>

        </div>

    </div>


    <!-- SUCCESS -->

    <% if (request.getAttribute("success") != null) { %>

        <div class="success">

            ✓ <%= request.getAttribute("success") %>

        </div>

    <% } %>


    <!-- ERROR -->

    <% if (request.getAttribute("error") != null) { %>

        <div class="error">

            ✕ <%= request.getAttribute("error") %>

        </div>

    <% } %>


    <!-- FORM -->

    <form action="${pageContext.request.contextPath}/admin/add-job"
          method="post">

        <div class="form-grid">


            <!-- JOB TITLE -->

            <div class="form-group">

                <label>
                    Job Title
                </label>

                <input
                    type="text"
                    name="title"
                    placeholder="Example: Java Developer"
                    required>

            </div>


            <!-- COMPANY -->

            <div class="form-group">

                <label>
                    Company Name
                </label>

                <input
                    type="text"
                    name="company"
                    placeholder="Example: Infosys"
                    required>

            </div>


            <!-- LOCATION -->

            <div class="form-group">

                <label>
                    Location
                </label>

                <input
                    type="text"
                    name="location"
                    placeholder="Example: Pune"
                    required>

            </div>


            <!-- SALARY -->

            <div class="form-group">

                <label>
                    Salary
                </label>

                <input
                    type="text"
                    name="salary"
                    placeholder="Example: ₹4,00,000 - ₹6,00,000">

            </div>


            <!-- SKILLS -->

            <div class="form-group full">

                <label>
                    Required Skills
                </label>

                <input
                    type="text"
                    name="skills"
                    placeholder="Example: Java, Spring, MySQL">

            </div>


            <!-- DESCRIPTION -->

            <div class="form-group full">

                <label>
                    Job Description
                </label>

                <textarea
                    name="description"
                    placeholder="Enter detailed job description"></textarea>

            </div>


            <!-- LAST DATE -->

            <div class="form-group">

                <label>
                    Last Date to Apply
                </label>

                <input
                    type="date"
                    name="lastDate"
                    required>

            </div>

        </div>


        <!-- BUTTONS -->

        <div class="buttons">

            <button
                type="submit"
                class="submit-btn">

                ✓ Add Job

            </button>

            <a
                class="cancel-btn"
                href="${pageContext.request.contextPath}/admin/jobs">

                Cancel

            </a>

        </div>

    </form>

</div>


</div>

</body>
</html>
