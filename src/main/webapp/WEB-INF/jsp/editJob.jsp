<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Edit Job | Job Portal</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Arial, sans-serif;
}

body {
    min-height: 100vh;
    background:
        radial-gradient(circle at top left, #e0e7ff 0%, transparent 35%),
        radial-gradient(circle at bottom right, #dbeafe 0%, transparent 35%),
        #f8fafc;
    padding: 45px 20px;
}

/* ================= HEADER ================= */

.topbar {
    width: 90%;
    max-width: 900px;
    margin: 0 auto 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo {
    font-size: 25px;
    font-weight: 800;
    color: #101828;
}

.logo span {
    color: #2563eb;
}

.back-link {
    text-decoration: none;
    color: #475467;
    font-size: 14px;
    font-weight: 600;
    transition: 0.3s;
}

.back-link:hover {
    color: #2563eb;
}

/* ================= CARD ================= */

.container {
    width: 90%;
    max-width: 900px;
    margin: auto;
}

.form-card {
    background: rgba(255,255,255,0.95);
    border: 1px solid #e4e7ec;
    border-radius: 22px;
    padding: 42px;
    box-shadow:
        0 20px 50px rgba(16,24,40,0.08);
}

/* ================= HEADING ================= */

.heading {
    margin-bottom: 30px;
    padding-bottom: 22px;
    border-bottom: 1px solid #eaecf0;
}

.heading h1 {
    font-size: 29px;
    color: #101828;
    margin-bottom: 7px;
}

.heading p {
    color: #667085;
    font-size: 14px;
}

/* ================= FORM ================= */

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

label {
    margin-bottom: 8px;
    color: #344054;
    font-size: 14px;
    font-weight: 700;
}

input,
textarea {
    width: 100%;
    border: 1px solid #d0d5dd;
    border-radius: 10px;
    padding: 13px 15px;
    font-size: 14px;
    color: #101828;
    background: #ffffff;
    outline: none;
    transition: 0.3s;
}

input:hover,
textarea:hover {
    border-color: #98a2b3;
}

input:focus,
textarea:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 4px #eff6ff;
}

textarea {
    min-height: 130px;
    resize: vertical;
}

/* ================= BUTTONS ================= */

.buttons {
    display: flex;
    gap: 12px;
    margin-top: 30px;
    padding-top: 25px;
    border-top: 1px solid #eaecf0;
}

.update-btn {
    border: none;
    background: linear-gradient(135deg, #2563eb, #1d4ed8);
    color: white;
    padding: 13px 25px;
    border-radius: 10px;
    font-size: 14px;
    font-weight: 700;
    cursor: pointer;
    box-shadow: 0 5px 15px rgba(37,99,235,0.25);
    transition: 0.3s;
}

.update-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(37,99,235,0.3);
}

.cancel-btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 13px 25px;
    background: #f2f4f7;
    color: #344054;
    text-decoration: none;
    border-radius: 10px;
    font-size: 14px;
    font-weight: 700;
    transition: 0.3s;
}

.cancel-btn:hover {
    background: #e4e7ec;
}

/* ================= RESPONSIVE ================= */

@media (max-width: 700px) {

    body {
        padding: 25px 10px;
    }

    .topbar,
    .container {
        width: 96%;
    }

    .form-card {
        padding: 25px;
    }

    .form-grid {
        grid-template-columns: 1fr;
    }

    .full {
        grid-column: auto;
    }

    .topbar {
        flex-direction: column;
        gap: 12px;
        align-items: flex-start;
    }

    .buttons {
        flex-direction: column;
    }

    .update-btn,
    .cancel-btn {
        width: 100%;
    }
}

</style>

</head>

<body>

<!-- ================= TOP BAR ================= -->

<div class="topbar">

    <div class="logo">
        Job<span>Portal</span>
    </div>

    <a class="back-link"
       href="${pageContext.request.contextPath}/admin/jobs">

        ← Back to Manage Jobs

    </a>

</div>


<!-- ================= MAIN CARD ================= -->

<div class="container">

    <div class="form-card">

        <div class="heading">

            <h1>
                ✏️ Edit Job
            </h1>

            <p>
                Update the job information and keep the opportunity details up to date.
            </p>

        </div>


        <!-- ================= FORM ================= -->

        <form
            action="${pageContext.request.contextPath}/admin/update-job"
            method="post">


            <!-- JOB ID -->

            <input
                type="hidden"
                name="jobId"
                value="${job.jobId}">


            <div class="form-grid">


                <!-- JOB TITLE -->

                <div class="form-group">

                    <label>
                        Job Title
                    </label>

                    <input
                        type="text"
                        name="title"
                        value="${job.title}"
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
                        value="${job.company}"
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
                        value="${job.location}"
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
                        value="${job.salary}"
                        placeholder="Example: ₹4,00,000 - ₹6,00,000"
                        required>

                </div>


                <!-- SKILLS -->

                <div class="form-group full">

                    <label>
                        Required Skills
                    </label>

                    <input
                        type="text"
                        name="skills"
                        value="${job.skills}"
                        placeholder="Example: Java, Spring, MySQL">

                </div>


                <!-- DESCRIPTION -->

                <div class="form-group full">

                    <label>
                        Job Description
                    </label>

                    <textarea
                        name="description"
                        placeholder="Enter job description">${job.description}</textarea>

                </div>


                <!-- LAST DATE -->

                <div class="form-group">

                    <label>
                        Last Date to Apply
                    </label>

                    <input
                        type="date"
                        name="lastDate"
                        value="${job.lastDate}"
                        required>

                </div>


            </div>


            <!-- BUTTONS -->

            <div class="buttons">

                <button
                    type="submit"
                    class="update-btn">

                    ✓ Update Job

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