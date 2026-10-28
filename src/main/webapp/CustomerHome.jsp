<%@page import="com.achyuta.customer_bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Customer Dashboard</title>

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

    .card {
        width: 420px;
        padding: 35px;
        background: #ffffff;
        border-radius: 18px;
        text-align: center;
        box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        animation: fadeIn 0.6s ease;
    }

    h2 {
        font-size: 26px;
        font-weight: 600;
        color: #222;
        margin-bottom: 6px;
    }

    p {
        color: #555;
        font-size: 15px;
        margin-bottom: 25px;
    }

    .btn-box {
        display: flex;
        justify-content: center;
        gap: 15px;
        margin-top: 15px;
    }

    .btn-box a {
        text-decoration: none;
        padding: 12px 25px;
        background: #4b70f5;
        color: #fff;
        font-size: 15px;
        font-weight: 500;
        border-radius: 10px;
        transition: 0.25s;
    }

    .btn-box a:hover {
        background: #3f63e6;
        transform: translateY(-2px);
    }

    .btn-outline {
        background: #fff !important;
        color: #4b70f5 !important;
        border: 2px solid #4b70f5;
    }

    .btn-outline:hover {
        background: #4b70f5 !important;
        color: #fff !important;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

</style>
</head>

<body>

    <div class="card">
        <%
            CustomerBean bean = (CustomerBean) session.getAttribute("valid");
        %>

        <h2>Welcome, <%= bean.getFirstName() %> 👋</h2>
        <p>Please choose an option below</p>

        <div class="btn-box">
            <a href="viewProductss">View Products</a>
            <a href="Logout" class="btn-outline">Logout</a>
        </div>
    </div>

</body>
</html>
