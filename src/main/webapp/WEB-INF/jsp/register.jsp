
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: "Segoe UI", Arial, sans-serif;
}

/* ================= BODY ================= */

body {
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 30px 15px;

    background:
        radial-gradient(
            circle at top left,
            rgba(20, 184, 166, 0.25),
            transparent 35%
        ),
        linear-gradient(
            135deg,
            #0f172a,
            #164e63,
            #0f766e
        );
}

/* ================= REGISTER CARD ================= */

.register-container {
    width: 440px;
    max-width: 100%;

    background: rgba(255, 255, 255, 0.98);

    padding: 38px 40px;

    border-radius: 24px;

    box-shadow:
        0 25px 60px rgba(0, 0, 0, 0.30);

    position: relative;
    overflow: hidden;

    animation: slideUp 0.6s ease;
}

/* Top Accent */

.register-container::before {
    content: "";
    position: absolute;

    top: 0;
    left: 0;

    width: 100%;
    height: 6px;

    background: linear-gradient(
        90deg,
        #14b8a6,
        #0f766e
    );
}

/* ================= TITLE ================= */

.title {
    text-align: center;
    margin-bottom: 28px;
}

.title h1 {
    color: #0f172a;
    font-size: 30px;
    font-weight: 800;
    margin-bottom: 8px;
}

.title h1::after {
    content: "";

    display: block;

    width: 55px;
    height: 4px;

    background: #14b8a6;

    border-radius: 10px;

    margin: 10px auto 0;
}

.title p {
    color: #64748b;
    font-size: 14px;
    margin-top: 12px;
}

/* ================= FORM ================= */

.form-group {
    margin-bottom: 17px;
}

.form-group label {
    display: block;

    margin-bottom: 7px;

    color: #334155;

    font-size: 14px;

    font-weight: 700;
}

/* ================= INPUTS ================= */

.form-group input,
.form-group select {
    width: 100%;

    padding: 13px 14px;

    border: 1px solid #cbd5e1;

    border-radius: 10px;

    outline: none;

    background: #f8fafc;

    color: #0f172a;

    font-size: 15px;

    transition: all 0.25s ease;
}

.form-group input::placeholder {
    color: #94a3b8;
}

/* Focus Effect */

.form-group input:focus,
.form-group select:focus {

    background: white;

    border-color: #14b8a6;

    box-shadow:
        0 0 0 3px rgba(20, 184, 166, 0.12);

    transform: translateY(-1px);
}

/* ================= SELECT ================= */

.form-group select {
    cursor: pointer;
}

/* ================= REGISTER BUTTON ================= */

.register-btn {
    width: 100%;

    padding: 14px;

    border: none;

    border-radius: 11px;

    background:
        linear-gradient(
            135deg,
            #14b8a6,
            #0f766e
        );

    color: white;

    font-size: 16px;

    font-weight: 700;

    cursor: pointer;

    margin-top: 7px;

    transition: all 0.3s ease;

    box-shadow:
        0 8px 20px rgba(15, 118, 110, 0.25);
}

.register-btn:hover {

    transform: translateY(-3px);

    box-shadow:
        0 12px 28px rgba(15, 118, 110, 0.35);
}

.register-btn:active {
    transform: translateY(0);
}

/* ================= LOGIN LINK ================= */

.login-link {
    text-align: center;

    margin-top: 23px;

    color: #64748b;

    font-size: 14px;

    padding-top: 18px;

    border-top: 1px solid #e2e8f0;
}

.login-link a {
    color: #0f766e;

    text-decoration: none;

    font-weight: 800;

    margin-left: 4px;

    transition: 0.2s ease;
}

.login-link a:hover {
    color: #14b8a6;
    text-decoration: underline;
}

/* ================= ANIMATION ================= */

@keyframes slideUp {

    from {
        opacity: 0;
        transform: translateY(25px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* ================= RESPONSIVE ================= */

@media (max-width: 500px) {

    body {
        padding: 20px 12px;
    }

    .register-container {
        padding: 32px 24px;
        border-radius: 20px;
    }

    .title h1 {
        font-size: 26px;
    }

    .form-group input,
    .form-group select {
        padding: 12px;
    }
}

