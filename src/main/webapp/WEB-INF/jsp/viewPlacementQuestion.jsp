```css id="h4t9pz"
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
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #0f172a,
            #164e63,
            #0f766e
        );

    min-height: 100vh;

    color: #334155;
}

/* ================= HEADER ================= */

.header {
    background: rgba(255, 255, 255, 0.98);

    padding: 19px 50px;

    display: flex;

    justify-content: space-between;

    align-items: center;

    box-shadow:
        0 8px 25px rgba(0, 0, 0, 0.15);

    position: sticky;

    top: 0;

    z-index: 100;
}

.header h1 {
    margin: 0;

    color: #0f172a;

    font-size: 27px;

    font-weight: 800;
}

.back {
    text-decoration: none;

    background:
        linear-gradient(
            135deg,
            #14b8a6,
            #0f766e
        );

    color: white;

    padding: 11px 19px;

    border-radius: 10px;

    font-weight: 700;

    box-shadow:
        0 6px 16px rgba(15, 118, 110, 0.20);

    transition: all 0.3s ease;
}

.back:hover {
    transform: translateY(-2px);

    box-shadow:
        0 9px 22px rgba(15, 118, 110, 0.30);
}

/* ================= CONTAINER ================= */

.container {
    width: 90%;

    max-width: 1000px;

    margin: 45px auto;
}

/* ================= TITLE ================= */

.title {
    color: white;

    margin-bottom: 28px;

    font-size: 29px;

    font-weight: 800;
}

.title::after {
    content: "";

    display: block;

    width: 60px;

    height: 4px;

    background: #14b8a6;

    border-radius: 10px;

    margin-top: 10px;
}

/* ================= QUESTION CARD ================= */

.question-card {
    background: rgba(255, 255, 255, 0.98);

    border-radius: 19px;

    padding: 26px;

    margin-bottom: 20px;

    box-shadow:
        0 12px 32px rgba(0, 0, 0, 0.17);

    border: 1px solid rgba(255, 255, 255, 0.5);

    position: relative;

    overflow: hidden;

    transition: all 0.3s ease;
}

/* Teal side accent */

.question-card::before {
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

.question-card:hover {
    transform: translateY(-4px);

    box-shadow:
        0 18px 40px rgba(0, 0, 0, 0.22);
}

/* ================= CATEGORY ================= */

.category {
    display: inline-block;

    background: #ecfeff;

    color: #0f766e;

    padding: 8px 15px;

    border-radius: 20px;

    font-size: 13px;

    font-weight: 800;

    margin-bottom: 15px;

    border: 1px solid #99f6e4;

    text-transform: uppercase;

    letter-spacing: 0.4px;
}

/* ================= QUESTION ================= */

.question {
    font-size: 18px;

    color: #1e293b;

    line-height: 1.7;

    font-weight: 600;

    padding-left: 2px;
}

/* ================= EMPTY STATE ================= */

.empty {
    background: rgba(255, 255, 255, 0.98);

    padding: 55px 30px;

    text-align: center;

    border-radius: 20px;

    color: #64748b;

    box-shadow:
        0 12px 32px rgba(0, 0, 0, 0.15);

    border: 1px solid #e2e8f0;
}

.empty h3 {
    color: #0f172a;

    font-size: 22px;

    margin-bottom: 8px;
}

.empty p {
    margin: 0;

    line-height: 1.6;
}

/* ================= BOTTOM BUTTON ================= */

.back-bottom {
    display: inline-block;

    margin-top: 10px;

    text-decoration: none;

    background:
        linear-gradient(
            135deg,
            #14b8a6,
            #0f766e
        );

    color: white;

    padding: 12px 21px;

    border-radius: 10px;

    font-weight: 700;

    box-shadow:
        0 7px 18px rgba(15, 118, 110, 0.22);

    transition: all 0.3s ease;
}

.back-bottom:hover {
    transform: translateY(-3px);

    box-shadow:
        0 11px 25px rgba(15, 118, 110, 0.32);
}

/* ================= RESPONSIVE ================= */

@media (max-width: 650px) {

    .header {
        padding: 17px 22px;

        flex-direction: column;

        gap: 15px;
    }

    .header h1 {
        font-size: 23px;
    }

    .back {
        width: 100%;

        text-align: center;
    }

    .container {
        width: 94%;

        margin: 30px auto;
    }

    .title {
        font-size: 25px;
    }

    .question-card {
        padding: 23px;
    }

    .question {
        font-size: 16px;
    }

    .back-bottom {
        width: 100%;

        text-align: center;
    }
}
```
