<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>AI Career Assistant</title>


<style>

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {

    font-family: Arial, Helvetica, sans-serif;

    background: #f4f7fb;

    min-height: 100vh;
}


/* ================= HEADER ================= */

.header {

    background: linear-gradient(135deg, #1a237e, #3949ab);

    color: white;

    padding: 20px 35px;

    display: flex;

    justify-content: space-between;

    align-items: center;
}

.header h1 {

    font-size: 24px;
}

.back-btn {

    color: white;

    text-decoration: none;

    background: rgba(255,255,255,0.18);

    padding: 10px 18px;

    border-radius: 8px;
}

.back-btn:hover {

    background: rgba(255,255,255,0.28);
}


/* ================= MAIN ================= */

.container {

    width: 90%;

    max-width: 850px;

    margin: 35px auto;
}

.title {

    text-align: center;

    margin-bottom: 25px;
}

.title h2 {

    color: #1a237e;

    font-size: 28px;

    margin-bottom: 8px;
}

.title p {

    color: #666;
}


/* ================= CHAT BOX ================= */

.chat-box {

    background: white;

    border-radius: 15px;

    box-shadow: 0 5px 20px rgba(0,0,0,0.10);

    overflow: hidden;
}

.chat-header {

    background: #3949ab;

    color: white;

    padding: 18px;

    font-size: 18px;

    font-weight: bold;
}


/* ================= MESSAGES ================= */

.messages {

    height: 430px;

    padding: 20px;

    overflow-y: auto;

    background: #f8f9fd;
}

.message {

    margin-bottom: 15px;

    display: flex;
}

.message.ai {

    justify-content: flex-start;
}

.message.user {

    justify-content: flex-end;
}

.bubble {

    max-width: 75%;

    padding: 12px 16px;

    border-radius: 12px;

    line-height: 1.5;

    word-wrap: break-word;
}

.ai .bubble {

    background: #e8eaf6;

    color: #222;
}

.user .bubble {

    background: #3949ab;

    color: white;
}


/* ================= THINKING ================= */

.thinking {

    color: #555;

    font-style: italic;
}


/* ================= ERROR ================= */

.error-message {

    background: #ffebee !important;

    color: #c62828 !important;

    border-left: 4px solid #c62828;
}


/* ================= INPUT ================= */

.input-area {

    display: flex;

    gap: 10px;

    padding: 15px;

    border-top: 1px solid #ddd;

    background: white;
}

.input-area input {

    flex: 1;

    padding: 13px;

    border: 1px solid #ccc;

    border-radius: 8px;

    font-size: 15px;

    outline: none;
}

.input-area input:focus {

    border-color: #3949ab;
}


/* ================= SEND BUTTON ================= */

.send-btn {

    padding: 13px 22px;

    border: none;

    border-radius: 8px;

    background: #3949ab;

    color: white;

    cursor: pointer;

    font-weight: bold;
}

.send-btn:hover {

    background: #1a237e;
}

.send-btn:disabled {

    background: #999;

    cursor: not-allowed;
}


/* ================= SUGGESTIONS ================= */

.suggestions {

    padding: 15px;

    background: white;

    border-top: 1px solid #eee;
}

.suggestions p {

    color: #666;

    margin-bottom: 10px;

    font-size: 14px;
}

.suggestion-btn {

    border: 1px solid #3949ab;

    color: #3949ab;

    background: white;

    padding: 8px 12px;

    border-radius: 20px;

    margin: 4px;

    cursor: pointer;
}

.suggestion-btn:hover {

    background: #3949ab;

    color: white;
}


/* ================= MOBILE ================= */

@media(max-width:600px) {

    .header {

        padding: 18px;
    }

    .container {

        width: 95%;
    }

    .messages {

        height: 400px;
    }

    .bubble {

        max-width: 85%;
    }

    .input-area {

        flex-direction: column;
    }

    .send-btn {

        width: 100%;
    }

}

</style>

</head>


<body>


<!-- ================= HEADER ================= -->

<div class="header">

    <h1>
        🤖 AI Career Assistant
    </h1>


    <a
        href="${pageContext.request.contextPath}/jobs"
        class="back-btn">

        ← Back to Jobs

    </a>

</div>


<!-- ================= MAIN ================= -->

<div class="container">


    <!-- TITLE -->

    <div class="title">

        <h2>
            AI Career Assistant
        </h2>

        <p>
            Get guidance about jobs, skills, interviews and career preparation.
        </p>

    </div>


    <!-- ================= CHAT BOX ================= -->

    <div class="chat-box">


        <!-- CHAT HEADER -->

        <div class="chat-header">

            🤖 AI Career Assistant

        </div>


        <!-- ================= MESSAGES ================= -->

        <div
            class="messages"
            id="messages">


            <!-- INITIAL AI MESSAGE -->

            <div class="message ai">

                <div class="bubble">

                    Hello! 👋

                    <br><br>

                    I am your AI Career Assistant.

                    I can help you with:

                    <br><br>

                    • Career guidance

                    <br>

                    • Job-related questions

                    <br>

                    • Required skills

                    <br>

                    • Interview preparation

                    <br>

                    • Resume guidance

                    <br>

                    • Java / Spring Boot career advice

                    <br><br>

                    Ask me anything about your career!

                </div>

            </div>


        </div>


        <!-- ================= SUGGESTIONS ================= -->

        <div class="suggestions">

            <p>
                Try asking:
            </p>


            <button
                class="suggestion-btn"
                onclick="askQuestion('What skills are required for a Java Developer?')">

                Java Developer Skills

            </button>


            <button
                class="suggestion-btn"
                onclick="askQuestion('How should I prepare for a software developer interview?')">

                Interview Preparation

            </button>


            <button
                class="suggestion-btn"
                onclick="askQuestion('Which skills should I learn for backend development?')">

                Backend Skills

            </button>


        </div>


        <!-- ================= INPUT ================= -->

        <div class="input-area">


            <input
                type="text"
                id="question"
                placeholder="Ask your career question..."
                onkeypress="handleEnter(event)">


            <button
                class="send-btn"
                id="sendButton"
                onclick="sendQuestion()">

                Send

            </button>


        </div>


    </div>

</div>


<!-- ================= JAVASCRIPT ================= -->

<script>


/* ================= ENTER KEY ================= */

function handleEnter(event) {

    if (event.key === "Enter") {

        sendQuestion();

    }

}


/* ================= SUGGESTION ================= */

function askQuestion(question) {

    document.getElementById("question").value = question;

    sendQuestion();

}


/* ================= ADD MESSAGE ================= */

function addMessage(text, type) {

    const messages =
        document.getElementById("messages");


    const message =
        document.createElement("div");


    message.className =
        "message " + type;


    const bubble =
        document.createElement("div");


    bubble.className =
        "bubble";


    bubble.innerHTML =
        text;


    message.appendChild(bubble);


    messages.appendChild(message);


    messages.scrollTop =
        messages.scrollHeight;


    return message;

}


/* ================= SEND QUESTION ================= */

function sendQuestion() {


    const input =
        document.getElementById("question");


    const sendButton =
        document.getElementById("sendButton");


    const question =
        input.value.trim();


    /* EMPTY QUESTION */

    if (question === "") {

        return;

    }


    /* USER MESSAGE */

    addMessage(

        question,

        "user"

    );


    /* CLEAR INPUT */

    input.value = "";


    /* DISABLE */

    sendButton.disabled = true;

    sendButton.innerText = "Thinking...";


    /* THINKING */

    const thinkingMessage =

        addMessage(

            "Thinking... 🤖",

            "ai"

        );


    thinkingMessage

        .querySelector(".bubble")

        .classList.add("thinking");


    /* ================= REQUEST ================= */

    fetch(

        "${pageContext.request.contextPath}/ai-career-chat",

        {

            method: "POST",

            headers: {

                "Content-Type":
                    "application/x-www-form-urlencoded"

            },

            body:

                "question=" +

                encodeURIComponent(question)

        }

    )


    /* ================= RESPONSE ================= */

    .then(function(response) {

        return response.text();

    })


    /* ================= ANSWER ================= */

    .then(function(answer) {


        const bubble =

            thinkingMessage

                .querySelector(".bubble");


        bubble.classList.remove("thinking");


        /* ERROR CHECK */

        if (

            answer.includes("AI service error") ||

            answer.includes("OpenAI API Error") ||

            answer.includes("Unable to connect") ||

            answer.includes("API key is not configured")

        ) {

            bubble.classList.add(
                "error-message"
            );

        }


        /* SHOW ANSWER */

        bubble.innerHTML = answer;


        /* SCROLL */

        const messages =

            document.getElementById("messages");


        messages.scrollTop =

            messages.scrollHeight;

    })


    /* ================= CONNECTION ERROR ================= */

    .catch(function(error) {


        console.error(error);


        const bubble =

            thinkingMessage

                .querySelector(".bubble");


        bubble.classList.remove(
            "thinking"
        );


        bubble.classList.add(
            "error-message"
        );


        bubble.innerHTML =

            "❌ Unable to connect to the AI server."

            + "<br><br>"

            + "Please check whether the Tomcat server is running.";

    })


    /* ================= FINALLY ================= */

    .finally(function() {


        sendButton.disabled = false;

        sendButton.innerText = "Send";

    });

}

</script>


</body>

</html>