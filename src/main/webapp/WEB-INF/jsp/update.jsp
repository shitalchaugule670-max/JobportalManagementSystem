```css id="q8k2lm"
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: "Segoe UI", Arial, sans-serif;

    background:
        radial-gradient(
            circle at top right,
            rgba(20, 184, 166, 0.18),
            transparent 32%
        ),
        linear-gradient(
            135deg,
            #0f172a,
            #164e63,
            #0f766e
        );

    min-height: 100vh;

    padding: 45px 20px;

    color: #334155;
}

/* ================= FORM CARD ================= */

.box {
    width: 600px;
    max-width: 100%;

    margin: 0 auto;

    background: rgba(255, 255, 255, 0.98);

    padding: 40px;

    border-radius: 24px;

    box-shadow:
        0 25px 60px rgba(0, 0, 0, 0.28);

    position: relative;

    overflow: hidden;

    animation: slideUp 0.6s ease;
}

/* Top Accent */

.box::before {
    content: "";

    position: absolute;

    top: 0;
    left: 0;

    width: 100%;
    height: 6px;

    background:
        linear-gradient(
            90deg,
            #14b8a6,
            #0f766e
        );
}

/* ================= TITLE ================= */

h1 {
    text-align: center;

    color: #0f172a;

    font-size: 30px;

    font-weight: 800;

    margin: 5px 0 30px;
}

h1::after {
    content: "";

    display: block;

    width: 55px;
    height: 4px;

    background: #14b8a6;

    border-radius: 10px;

    margin: 10px auto 0;
}

/* ================= INPUTS ================= */

input,
textarea {
    width: 100%;

    padding: 13px 14px;

    margin: 8px 0 14px;

    border: 1px solid #cbd5e1;

    border-radius: 10px;

    outline: none;

    background: #f8fafc;

    color: #0f172a;

    font-size: 15px;

    font-family: inherit;

    transition: all 0.25s ease;
}

input::placeholder,
textarea::placeholder {
    color: #94a3b8;
}

/* Focus */

input:focus,
textarea:focus {

    background: white;

    border-color: #14b8a6;

    box-shadow:
        0 0 0 3px rgba(20, 184, 166, 0.12);

    transform: translateY(-1px);
}

/* Date input */

input[type="date"] {
    cursor: pointer;
}

/* ================= DESCRIPTION ================= */

textarea {
    height: 120px;

    resize: vertical;

    line-height: 1.6;
}

/* ================= UPDATE BUTTON ================= */

button {
    width: 100%;

    padding: 14px;

    border: 0;

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

    margin-top: 8px;

    transition: all 0.3s ease;

    box-shadow:
        0 8px 20px rgba(15, 118, 110, 0.25);
}

button:hover {

    transform: translateY(-3px);

    box-shadow:
        0 12px 28px rgba(15, 118, 110, 0.35);
}

button:active {
    transform: translateY(0);
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

@media (max-width: 650px) {

    body {
        padding: 25px 12px;
    }

    .box {
        padding: 32px 24px;
        border-radius: 20px;
    }

    h1 {
        font-size: 26px;
    }

    input,
    textarea {
        font-size: 14px;
    }
}
```
