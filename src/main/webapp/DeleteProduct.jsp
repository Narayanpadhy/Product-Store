<%@page import="com.achyuta.product_envintory.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

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
        width: 450px;
        padding: 40px;
        background: #ffffff;
        border-radius: 18px;
        text-align: center;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        animation: fadeIn 0.6s ease;
    }

    h2 {
        font-size: 26px;
        font-weight: 600;
        color: #1e1e1e;
        margin-bottom: 10px;
    }

    .message {
        font-size: 15px;
        color: #555;
        margin-bottom: 25px;
    }

    .btn-group {
        display: flex;
        justify-content: center;
        gap: 15px;
        margin-top: 20px;
    }

    .btn-group a {
        text-decoration: none;
        padding: 12px 25px;
        font-size: 15px;
        font-weight: 500;
        border-radius: 10px;
        transition: 0.25s;
    }

    .btn-primary {
        background: #4b70f5;
        color: #fff;
    }

    .btn-primary:hover {
        background: #3f63e6;
        transform: translateY(-2px);
    }

    .btn-outline {
        background: #fff;
        color: #4b70f5;
        border: 2px solid #4b70f5;
    }

    .btn-outline:hover {
        background: #4b70f5;
        color: #fff;
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
            String deleteData = (String) request.getAttribute("delete");
            AdminBean bean = (AdminBean) session.getAttribute("adminData");
        %>

        <h2>Welcome, <%= bean.getFname() %> </h2>
        <p class="message"><%= deleteData %></p>

        <div class="btn-group">
            <a href="AddProduct.html" class="btn-primary">Add Product</a>
            <a href="viewProduct" class="btn-outline">View Products</a>
            <a href="LogOut" class="btn-outline">Logout</a>
        </div>

    </div>

</body>
</html>
