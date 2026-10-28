<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged Out</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #003366, #4e9eff);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .logout-box {
        background: rgba(255, 255, 255, 0.18);
        backdrop-filter: blur(12px);
        padding: 35px;
        border-radius: 18px;
        width: 420px;
        text-align: center;
        color: #fff;
        box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        animation: fadeUp 0.7s ease;
    }

    @keyframes fadeUp {
        from { opacity: 0; transform: translateY(20px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    .logout-box h2 {
        font-size: 26px;
        margin-bottom: 10px;
        font-weight: 600;
    }

    .message {
        font-size: 16px;
        margin-bottom: 25px;
        opacity: 0.9;
    }

    .btn {
        text-decoration: none;
        padding: 10px 20px;
        background: #fff;
        color: #003366;
        border-radius: 8px;
        font-weight: 600;
        transition: 0.3s;
    }

    .btn:hover {
        background: #003366;
        color: #fff;
    }
</style>

</head>
<body>

<%
    // END SESSION
    session.invalidate();
%>

<div class="logout-box">
    <h2>Successfully Logged Out</h2>
    <div class="message">
        You have been logged out securely.
    </div>

    <a href="index.html" class="btn">Back to Home</a>
</div>

</body>
</html>
