<%@page import="com.achyuta.product_envintory.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Status</title>

<style>
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background: #f5f7fa;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .card {
        background: #ffffff;
        width: 480px;
        padding: 32px;
        border-radius: 16px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.12);
        text-align: center;
    }

    .card h2 {
        margin: 0 0 10px;
        font-size: 24px;
        color: #1f2933;
    }

    .card p {
        margin: 6px 0 18px;
        font-size: 15px;
        color: #4b5563;
    }

    .status {
        font-size: 15px;
        font-weight: 500;
        color: #0369a1;
        margin-bottom: 20px;
    }

    .btn-group {
        display: flex;
        justify-content: center;
        gap: 12px;
        flex-wrap: wrap;
    }

    .btn-group a {
        text-decoration: none;
        padding: 10px 18px;
        border-radius: 8px;
        font-size: 14px;
        font-weight: 500;
        transition: 0.25s;
    }

    .primary {
        background: #2563eb;
        color: #ffffff;
    }

    .primary:hover {
        background: #1d4ed8;
    }

    .outline {
        background: #ffffff;
        color: #2563eb;
        border: 1px solid #2563eb;
    }

    .outline:hover {
        background: #2563eb;
        color: #ffffff;
    }
</style>
</head>
<body>

<%
    AdminBean bean = (AdminBean)session.getAttribute("adminData");
    String updateData = (String)request.getAttribute("update");
%>

<div class="card">
    <h2>Welcome Mr. <%= bean != null ? bean.getFname() : "Admin" %> 🙏</h2>
    <p>Here is the latest status of your action:</p>

    <% if (updateData != null) { %>
        <div class="status"><%= updateData %></div>
    <% } else { %>
        <div class="status">No recent update available.</div>
    <% } %>

    <div class="btn-group">
        <a href="AddProduct.html" class="primary">Add Product</a>
        <a href="viewProduct" class="outline">View Products</a>
        <a href="LogOut" class="outline">Logout</a>
    </div>
</div>

</body>
</html>
