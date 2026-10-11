<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">

<title>Add Placement Drive | Job Portal</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<style>

/* ================= GLOBAL ================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {

    min-height: 100vh;

    font-family: 'Inter', sans-serif;

    background:
        radial-gradient(
            circle at 5% 10%,
            rgba(45,212,191,0.12),
            transparent 30%
        ),
        radial-gradient(
            circle at 95% 85%,
            rgba(99,102,241,0.10),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #07111f,
            #0d1b2e 55%,
            #101b35
        );

    color: #172033;

    padding: 38px 20px;
}

/* ================= MAIN CONTAINER ================= */

.container {

    width: 90%;

    max-width: 780px;

    margin: 0 auto;

    background: rgba(255,255,255,0.97);

    border: 1px solid rgba(255,255,255,0.15);

    border-radius: 24px;

    padding: 40px;

    box-shadow:
        0 25px 70px rgba(0,0,0,0.35);

    animation: appear 0.55s ease;
}

@keyframes appear {

    from {
        opacity: 0;
        transform: translateY(18px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* ================= HEADING ================= */

.heading {

    display: flex;

    align-items: center;

    gap: 16px;

    padding-bottom: 25px;

    margin-bottom: 26px;

    border-bottom: 1px solid #e7edf3;
}

.heading-icon {

    width: 57px;
    height: 57px;

    flex-shrink: 0;

    display: flex;

    align-items: center;
    justify-content: center;

    border-radius: 16px;

    background:
        linear-gradient(
            135deg,
            #e5faf7,
            #f3fcfb
        );

    border: 1px solid #d3f1eb;

    font-size: 27px;

    box-shadow:
        0 7px 18px rgba(20,184,166,0.08);
}

.heading h2 {

    color: #14263a;

    font-size: 25px;

    font-weight: 800;

    margin-bottom: 6px;
}

.heading p {

    color: #718196;

    font-size: 13px;

    line-height: 1.5;
}

/* ================= MESSAGES ================= */

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

form {

    width: 100%;
}

.form-grid {

    display: grid;

    grid-template-columns: 1fr 1fr;

    gap: 21px;
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

    color: #34475a;

    font-size: 13px;

    font-weight: 700;
}

/* ================= INPUT ================= */

input,
textarea {

    width: 100%;

    border: 1px solid #d8e1e9;

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

    padding: 0 14px;
}

textarea {

    min-height: 125px;

    padding: 14px;

    resize: vertical;

    line-height: 1.6;
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

/* ================= NUMBER INPUT ================= */

input[type="number"] {

    appearance: textfield;
}

input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {

    opacity: 0.6;
}

/* ================= DATE ================= */

input[type="date"] {

    color: #34475a;

    cursor: pointer;
}

/* ================= BUTTON AREA ================= */

.buttons {

    display: flex;

    align-items: center;

    gap: 12px;

    margin-top: 29px;

    padding-top: 25px;

    border-top: 1px solid #e7edf3;
}

/* ================= SAVE BUTTON ================= */

button {

    border: none;

    height: 49px;

    padding: 0 25px;

    border-radius: 10px;

    background:
        linear-gradient(
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
        0 9px 20px rgba(20,184,166,0.18);

    transition: 0.3s;
}

button:hover {

    transform: translateY(-2px);

    box-shadow:
        0 13px 27px rgba(20,184,166,0.25);
}

button:active {

    transform: translateY(0);
}

/* ================= BACK ================= */

.back {

    display: flex;

    align-items: center;

    justify-content: center;

    margin-top: 13px;

    width: 100%;

    height: 47px;

    border-radius: 10px;

    background: #f1f4f7;

    color: #526477;

    text-decoration: none;

    font-size: 13px;

    font-weight: 700;

    transition: 0.3s;
}

.back:hover {

    background: #e5ebf0;

    color: #24384c;

    transform: translateY(-1px);
}

/* ================= RESPONSIVE ================= */

@media(max-width: 650px) {

    body {
        padding: 20px 12px;
    }

    .container {

        width: 100%;

        padding: 28px 22px;

        border-radius: 20px;
    }

    .form-grid {

        grid-template-columns: 1fr;
    }

    .full {

        grid-column: auto;
    }

    .heading h2 {

        font-size: 21px;
    }

    .heading-icon {

        width: 49px;
        height: 49px;

        font-size: 23px;
    }

    .buttons {

        flex-direction: column;

        align-items: stretch;
    }

    button {

        width: 100%;
    }
}

</style>

</head>

<body>

<div class="container">

```
<!-- ================= HEADING ================= -->

<div class="heading">

    <div class="heading-icon">
        🎓
    </div>

    <div>

        <h2>
            Add Previous Placement Drive
        </h2>

        <p>
            Add company, selection and drive details for students.
        </p>

    </div>

</div>


<!-- ================= SUCCESS ================= -->

<% if(request.getAttribute("success") != null) { %>

    <div class="success">

        ✓ <%= request.getAttribute("success") %>

    </div>

<% } %>


<!-- ================= ERROR ================= -->

<% if(request.getAttribute("error") != null) { %>

    <div class="error">

        ✕ <%= request.getAttribute("error") %>

    </div>

<% } %>


<!-- ================= FORM ================= -->

<form
    action="${pageContext.request.contextPath}/admin/placement-drives/add"
    method="post">

    <div class="form-grid">


        <!-- COMPANY -->

        <div class="form-group">

            <label>
                Company Name
            </label>

            <input
                type="text"
                name="companyName"
                placeholder="Example: Infosys"
                required>

        </div>


        <!-- YEAR -->

        <div class="form-group">

            <label>
                Drive Year
            </label>

            <input
                type="number"
                name="driveYear"
                placeholder="Example: 2025"
                required>

        </div>


        <!-- JOB ROLE -->

        <div class="form-group">

            <label>
                Job Role
            </label>

            <input
                type="text"
                name="jobRole"
                placeholder="Example: Software Developer">

        </div>


        <!-- PACKAGE -->

        <div class="form-group">

            <label>
                Package
            </label>

            <input
                type="text"
                name="packageAmount"
                placeholder="Example: 4.5 LPA">

        </div>


        <!-- STUDENTS APPEARED -->

        <div class="form-group">

            <label>
                Students Appeared
            </label>

            <input
                type="number"
                name="studentsAppeared"
                value="0"
                min="0">

        </div>


        <!-- STUDENTS SELECTED -->

        <div class="form-group">

            <label>
                Students Selected
            </label>

            <input
                type="number"
                name="studentsSelected"
                value="0"
                min="0">

        </div>


        <!-- DRIVE DATE -->

        <div class="form-group">

            <label>
                Drive Date
            </label>

            <input
                type="date"
                name="driveDate">

        </div>


        <!-- DESCRIPTION -->

        <div class="form-group full">

            <label>
                Description
            </label>

            <textarea
                name="description"
                placeholder="Enter placement drive details..."></textarea>

        </div>

    </div>


    <!-- ================= BUTTONS ================= -->

    <div class="buttons">

        <button type="submit">

            ✓ Save Placement Drive

        </button>

    </div>

</form>


<!-- ================= BACK ================= -->

<a
    class="back"
    href="${pageContext.request.contextPath}/admin/placement-drives">

    ← Back to Placement Drives

</a>
```

</div>

</body>
</html>
