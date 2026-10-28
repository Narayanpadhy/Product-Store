<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Logged Out</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Inter", sans-serif;
    }

    body {
        height: 100vh;
        background: #f5f6fa;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .logout-card {
        width: 420px;
        padding: 35px;
        background: #ffffff;
        border-radius: 18px;
        text-align: center;
        box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        animation: fadeIn 0.5s ease;
    }

    h2 {
        font-size: 26px;
        font-weight: 600;
        color: #222;
        margin-bottom: 10px;
    }

    p {
        font-size: 15px;
        color: #555;
        margin-bottom: 25px;
    }

    a {
        text-decoration: none;
        padding: 12px 25px;
        background: #4b70f5;
        color: #fff;
        font-size: 15px;
        font-weight: 500;
        border-radius: 10px;
        transition: 0.25s;
    }

    a:hover {
        background: #3f63e6;
        transform: translateY(-2px);
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>

</head>
<body>

    <div class="logout-card">
        <%
            session.invalidate();
        %>

        <h2>You Are Logged Out</h2>
        <p>Customer logged out successfully</p>

        <a href="index.html">Back to Home</a>
    </div>

</body>
</html>
