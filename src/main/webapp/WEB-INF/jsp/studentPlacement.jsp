```css id="n7p4qx"
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: "Segoe UI", Arial, sans-serif;

    background:
        radial-gradient(
            circle at top right,
            rgba(20, 184, 166, 0.12),
            transparent 30%
        ),
        #f1f5f9;

    min-height: 100vh;
    color: #334155;
}

/* ================= HEADER ================= */

.header {
    background:
        linear-gradient(
            135deg,
            #0f172a,
            #164e63,
            #0f766e
        );

    color: white;

    padding: 20px 55px;

    display: flex;
    justify-content: space-between;
    align-items: center;

    box-shadow:
        0 8px 25px rgba(15, 23, 42, 0.20);

    position: sticky;
    top: 0;
    z-index: 100;
}

.header strong {
    font-size: 22px;
    font-weight: 800;
    letter-spacing: 0.3px;
}

.header a {
    color: white;
    text-decoration: none;

    font-weight: 700;

    padding: 10px 18px;

    border-radius: 9px;

    background: rgba(255, 255, 255, 0.12);

    border: 1px solid rgba(255, 255, 255, 0.22);

    transition: 0.3s ease;
}

.header a:hover {
    background: rgba(255, 255, 255, 0.22);
    transform: translateY(-2px);
}

/* ================= MAIN CONTAINER ================= */

.container {
    width: 90%;
    max-width: 1100px;
    margin: 45px auto;
}

/* ================= PAGE TITLE ================= */

h1 {
    color: #0f172a;

    font-size: 31px;

    margin-bottom: 8px;

    font-weight: 800;
}

.container > p {
    color: #64748b;

    font-size: 15px;

    margin-bottom: 30px;
}

/* ================= DRIVE CARD ================= */

.card {
    background: white;

    padding: 28px;

    margin-bottom: 24px;

    border-radius: 20px;

    box-shadow:
        0 10px 30px rgba(15, 23, 42, 0.09);

    border: 1px solid #e2e8f0;

    position: relative;

    overflow: hidden;

    transition: all 0.3s ease;
}

/* Teal left accent */

.card::before {
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

.card:hover {
    transform: translateY(-5px);

    box-shadow:
        0 18px 40px rgba(15, 23, 42, 0.14);
}

/* ================= COMPANY NAME ================= */

.card h2 {
    color: #0f172a;

    margin-top: 0;
    margin-bottom: 18px;

    font-size: 24px;

    font-weight: 800;
}

/* ================= INFORMATION BADGES ================= */

.info {
    display: flex;

    gap: 10px;

    flex-wrap: wrap;

    margin: 15px 0 20px;
}

.badge {
    background: #ecfeff;

    color: #0f766e;

    padding: 9px 14px;

    border-radius: 20px;

    font-weight: 700;

    font-size: 14px;

    border: 1px solid #99f6e4;

    transition: 0.25s ease;
}

.badge:hover {
    background: #ccfbf1;

    transform: translateY(-2px);
}

/* ================= DRIVE DETAILS ================= */

.card p {
    color: #475569;

    line-height: 1.7;

    font-size: 15px;
}

.card p strong {
    color: #0f172a;
}

/* ================= VIEW QUESTIONS BUTTON ================= */

.button {
    display: inline-block;

    margin-top: 10px;

    padding: 12px 19px;

    background:
        linear-gradient(
            135deg,
            #14b8a6,
            #0f766e
        );

    color: white;

    text-decoration: none;

    border-radius: 10px;

    font-weight: 700;

    box-shadow:
        0 7px 18px rgba(15, 118, 110, 0.20);

    transition: all 0.3s ease;
}

.button:hover {
    transform: translateY(-3px);

    box-shadow:
        0 11px 25px rgba(15, 118, 110, 0.30);
}

/* ================= EMPTY STATE ================= */

.empty {
    background: white;

    padding: 60px 30px;

    text-align: center;

    border-radius: 20px;

    box-shadow:
        0 10px 30px rgba(15, 23, 42, 0.08);

    border: 1px solid #e2e8f0;
}

.empty h2 {
    color: #0f172a;

    margin-bottom: 8px;
}

/* ================= RESPONSIVE ================= */

@media (max-width: 700px) {

    .header {
        padding: 18px 25px;
    }

    .header strong {
        font-size: 19px;
    }

    .container {
        width: 94%;
        margin: 30px auto;
    }

    h1 {
        font-size: 26px;
    }

    .card {
        padding: 23px;
    }

    .card h2 {
        font-size: 21px;
    }

    .button {
        width: 100%;
        text-align: center;
    }
}

@media (max-width: 480px) {

    .header {
        flex-direction: column;
        gap: 13px;
    }

    .header a {
        width: 100%;
        text-align: center;
    }

    .badge {
        width: 100%;
        text-align: center;
    }
}
```

