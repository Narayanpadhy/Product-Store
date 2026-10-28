<%@page import="com.achyuta.customer_bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purchase Summary</title>

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
        color: #fff;
    }

    .card {
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(12px);
        padding: 40px;
        width: 420px;
        text-align: center;
        border-radius: 20px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        animation: fadeIn 1s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    h2 {
        font-size: 28px;
        margin-bottom: 10px;
        font-weight: 600;
    }

    .amount {
        font-size: 36px;
        font-weight: 700;
        margin: 20px 0;
        color: #ffffff;
    }

    .btn-box {
        margin-top: 25px;
        display: flex;
        gap: 15px;
        justify-content: center;
    }

    .btn {
        text-decoration: none;
        padding: 10px 24px;
        background: #fff;
        color: #003366;
        border-radius: 10px;
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

<div class="card">
    <%
        CustomerBean bean = (CustomerBean) session.getAttribute("valid");
        double price = (double) request.getAttribute("totalprice");
    %>

    <h2>Hello <%= bean.getFirstName() %> 👋</h2>
    <p>Your purchase amount is:</p>

    <div class="amount">₹ <%= price %></div>

    <div class="btn-box">
        <a href="viewProductss" class="btn">View Products</a>
        <a href="Logout" class="btn">Logout</a>
    </div>
</div>

</body>
</html>
