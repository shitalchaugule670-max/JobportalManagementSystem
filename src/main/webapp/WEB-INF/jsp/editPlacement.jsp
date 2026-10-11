<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Edit Placement Drive | Job Portal</title>

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
        radial-gradient(
            circle at top left,
            #dbeafe 0%,
            transparent 32%
        ),
        radial-gradient(
            circle at bottom right,
            #e0e7ff 0%,
            transparent 35%
        ),
        #f8fafc;

    padding: 40px 20px;
}

/* ================= TOP BAR ================= */

.topbar {
    max-width: 850px;
    margin: 0 auto 22px;

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

.back-top {
    text-decoration: none;
    color: #475467;
    font-size: 14px;
    font-weight: 600;
    transition: 0.3s;
}

.back-top:hover {
    color: #2563eb;
}

/* ================= CONTAINER ================= */

.container {
    width: 100%;
    max-width: 850px;
    margin: auto;
}

.card {
    background: rgba(255,255,255,0.96);

    border: 1px solid #e4e7ec;
    border-radius: 22px;

    padding: 40px;

    box-shadow:
        0 20px 55px rgba(16,24,40,0.09);
}

/* ================= HEADING ================= */

.heading {
    padding-bottom: 22px;
    margin-bottom: 30px;

    border-bottom: 1px solid #eaecf0;
}

.heading h1 {
    color: #101828;
    font-size: 29px;
    margin-bottom: 7px;
}

.heading p {
    color: #667085;
    font-size: 14px;
}

/* ================= FORM ================= */

.row {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 22px;
}

.field {
    margin-bottom: 21px;
}

.full {
    grid-column: 1 / -1;
}

label {
    display: block;
    margin-bottom: 8px;

    color: #344054;
    font-size: 14px;
    font-weight: 700;
}

input,
textarea {
    width: 100%;

    padding: 13px 15px;

    border: 1px solid #d0d5dd;
    border-radius: 10px;

    background: #ffffff;
    color: #101828;

    font-size: 14px;
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

    box-shadow:
        0 0 0 4px #eff6ff;
}

textarea {
    min-height: 135px;
    resize: vertical;
}

/* ================= BUTTON AREA ================= */

.buttons {
    display: flex;
    gap: 12px;

    margin-top: 10px;
    padding-top: 25px;

    border-top: 1px solid #eaecf0;
}

.update-btn {
    border: none;

    background:
        linear-gradient(
            135deg,
            #2563eb,
            #1d4ed8
        );

    color: white;

    padding: 13px 25px;

    border-radius: 10px;

    font-size: 14px;
    font-weight: 700;

    cursor: pointer;

    box-shadow:
        0 6px 16px rgba(37,99,235,0.25);

    transition: 0.3s;
}

.update-btn:hover {
    transform: translateY(-2px);

    box-shadow:
        0 9px 22px rgba(37,99,235,0.30);
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

@media(max-width: 700px) {

    body {
        padding: 25px 12px;
    }

    .topbar {
        width: 96%;

        flex-direction: column;
        align-items: flex-start;

        gap: 12px;
    }

    .card {
        padding: 25px;
    }

    .row {
        grid-template-columns: 1fr;
        gap: 0;
    }

    .full {
        grid-column: auto;
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

    <a
        class="back-top"
        href="${pageContext.request.contextPath}/admin/placement-drives">

        ← Back to Placement Drives

    </a>

</div>


<!-- ================= MAIN CARD ================= -->

<div class="container">

    <div class="card">

        <div class="heading">

            <h1>
                ✏️ Edit Placement Drive
            </h1>

            <p>
                Update company, placement and drive information below.
            </p>

        </div>


        <!-- ================= FORM ================= -->

        <form
            action="${pageContext.request.contextPath}/admin/update-placement"
            method="post">


            <!-- DRIVE ID -->

            <input
                type="hidden"
                name="driveId"
                value="${drive.driveId}">


            <!-- COMPANY + YEAR -->

            <div class="row">

                <div class="field">

                    <label>
                        Company Name
                    </label>

                    <input
                        type="text"
                        name="companyName"
                        value="${drive.companyName}"
                        placeholder="Example: Infosys"
                        required>

                </div>


                <div class="field">

                    <label>
                        Drive Year
                    </label>

                    <input
                        type="number"
                        name="driveYear"
                        value="${drive.driveYear}"
                        placeholder="Example: 2026"
                        required>

                </div>

            </div>


            <!-- JOB ROLE + PACKAGE -->

            <div class="row">

                <div class="field">

                    <label>
                        Job Role
                    </label>

                    <input
                        type="text"
                        name="jobRole"
                        value="${drive.jobRole}"
                        placeholder="Example: Software Developer"
                        required>

                </div>


                <div class="field">

                    <label>
                        Package
                    </label>

                    <input
                        type="text"
                        name="packageAmount"
                        value="${drive.packageAmount}"
                        placeholder="Example: 4.5 LPA"
                        required>

                </div>

            </div>


            <!-- STUDENTS -->

            <div class="row">

                <div class="field">

                    <label>
                        Students Appeared
                    </label>

                    <input
                        type="number"
                        name="studentsAppeared"
                        value="${drive.studentsAppeared}"
                        min="0"
                        required>

                </div>


                <div class="field">

                    <label>
                        Students Selected
                    </label>

                    <input
                        type="number"
                        name="studentsSelected"
                        value="${drive.studentsSelected}"
                        min="0"
                        required>

                </div>

            </div>


            <!-- DRIVE DATE -->

            <div class="field">

                <label>
                    Drive Date
                </label>

                <input
                    type="date"
                    name="driveDate"
                    value="${drive.driveDate}"
                    required>

            </div>


            <!-- DESCRIPTION -->

            <div class="field">

                <label>
                    Description
                </label>

                <textarea
                    name="description"
                    placeholder="Enter placement drive details...">${drive.description}</textarea>

            </div>


            <!-- BUTTONS -->

            <div class="buttons">

                <button
                    type="submit"
                    class="update-btn">

                    ✓ Update Placement Drive

                </button>


                <a
                    class="cancel-btn"
                    href="${pageContext.request.contextPath}/admin/placement-drives">

                    Cancel

                </a>

            </div>


        </form>

    </div>

</div>


</body>

</html>