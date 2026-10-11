<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<title>Add Placement Question | Job Portal</title>

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

    display: flex;
    justify-content: center;
    align-items: center;

    padding: 35px 20px;

    background:
        radial-gradient(
            circle at 8% 12%,
            rgba(45,212,191,0.12),
            transparent 30%
        ),
        radial-gradient(
            circle at 92% 85%,
            rgba(99,102,241,0.09),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #07111f,
            #0d1b2e 55%,
            #101b35
        );

    color: #172033;
}

/* ================= MAIN CONTAINER ================= */

.container {

    width: 90%;

    max-width: 760px;

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

/* ================= HEADER ================= */

.heading {

    display: flex;

    align-items: center;

    gap: 16px;

    padding-bottom: 25px;

    margin-bottom: 25px;

    border-bottom: 1px solid #e7edf3;
}

.heading-icon {

    width: 56px;

    height: 56px;

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

    margin-bottom: 5px;
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

/* ================= FORM ================= */

.form-group {

    margin-bottom: 23px;
}

label {

    display: block;

    margin-bottom: 8px;

    color: #34475a;

    font-size: 13px;

    font-weight: 700;
}

/* ================= SELECT ================= */

select {

    width: 100%;

    height: 50px;

    padding: 0 14px;

    border: 1px solid #d8e1e9;

    border-radius: 10px;

    background: #fbfdff;

    color: #26384a;

    font-family: 'Inter', sans-serif;

    font-size: 13px;

    outline: none;

    cursor: pointer;

    transition: 0.25s;
}

select:focus {

    border-color: #18b5a5;

    background: white;

    box-shadow:
        0 0 0 3px rgba(24,181,165,0.10);
}

/* ================= TEXTAREA ================= */

textarea {

    width: 100%;

    min-height: 170px;

    padding: 14px;

    border: 1px solid #d8e1e9;

    border-radius: 10px;

    background: #fbfdff;

    color: #172033;

    font-family: 'Inter', sans-serif;

    font-size: 13px;

    line-height: 1.6;

    outline: none;

    resize: vertical;

    transition: 0.25s;
}

textarea::placeholder {

    color: #9aaabc;
}

textarea:focus {

    border-color: #18b5a5;

    background: white;

    box-shadow:
        0 0 0 3px rgba(24,181,165,0.10);
}

/* ================= ADD BUTTON ================= */

button {

    width: 100%;

    height: 51px;

    border: none;

    border-radius: 10px;

    background:
        linear-gradient(
            135deg,
            #119f90,
            #20bbaa
        );

    color: white;

    font-family: 'Inter', sans-serif;

    font-size: 14px;

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

/* ================= BACK BUTTON ================= */

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

@media(max-width: 600px) {

    body {

        padding: 20px 12px;
    }

    .container {

        width: 100%;

        padding: 27px 22px;

        border-radius: 19px;
    }

    .heading h2 {

        font-size: 21px;
    }

    .heading-icon {

        width: 48px;
        height: 48px;

        font-size: 22px;
    }

}

</style>

</head>

<body>

<div class="container">

```
<!-- ================= HEADER ================= -->

<div class="heading">

    <div class="heading-icon">
        📝
    </div>

    <div>

        <h2>
            Add Placement Question
        </h2>

        <p>
            Add an interview question to the selected placement drive.
        </p>

    </div>

</div>


<!-- ================= SUCCESS MESSAGE ================= -->

<% if(request.getAttribute("success") != null) { %>

    <div class="success">

        ✓ <%= request.getAttribute("success") %>

    </div>

<% } %>


<!-- ================= ERROR MESSAGE ================= -->

<% if(request.getAttribute("error") != null) { %>

    <div class="error">

        ✕ <%= request.getAttribute("error") %>

    </div>

<% } %>


<!-- ================= FORM ================= -->

<form
    action="${pageContext.request.contextPath}/admin/placement-questions/add"
    method="post">


    <!-- HIDDEN DRIVE ID -->

    <input
        type="hidden"
        name="driveId"
        value="${driveId}">


    <!-- QUESTION CATEGORY -->

    <div class="form-group">

        <label>
            Question Category
        </label>

        <select
            name="category"
            required>

            <option value="">
                Select Category
            </option>

            <option value="Technical">
                Technical
            </option>

            <option value="Coding">
                Coding
            </option>

            <option value="Aptitude">
                Aptitude
            </option>

            <option value="HR">
                HR
            </option>

            <option value="Communication">
                Communication
            </option>

        </select>

    </div>


    <!-- QUESTION -->

    <div class="form-group">

        <label>
            Interview Question
        </label>

        <textarea
            name="question"
            placeholder="Enter previous interview question..."
            required></textarea>

    </div>


    <!-- ADD -->

    <button type="submit">

        ✓ Add Question

    </button>


</form>


<!-- ================= BACK ================= -->

<a
    class="back"
    href="${pageContext.request.contextPath}/admin/placement-drives">

    ← Back to Placement Drives

</a>


</div>

</body>
</html>
