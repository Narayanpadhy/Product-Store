<%@page import="java.util.Iterator"%>
<%@page import="com.achyuta.product_envintory.AdminBean"%>
<%@page import="com.achyuta.product_envintory.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Product Management</title>

<style>
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background: #eef1f5;
        padding: 20px;
    }

    .container {
        max-width: 1000px;
        margin: auto;
        background: white;
        padding: 25px 40px;
        border-radius: 14px;
        box-shadow: 0px 8px 25px rgba(0,0,0,0.12);
    }

    h2 {
        color: #1f2937;
        margin-bottom: 20px;
        font-size: 26px;
    }

    .empty {
        color: #777;
        font-size: 18px;
        text-align: center;
        padding: 40px 0;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 15px;
    }

    th, td {
        padding: 12px 14px;
        border-bottom: 1px solid #e5e7eb;
        font-size: 15px;
        text-align: left;
    }

    th {
        background: #2563eb;
        color: white;
        font-size: 15px;
    }

    tr:hover {
        background: #f3f4f6;
        transition: 0.25s;
    }

    .action-btn {
        text-decoration: none;
        padding: 6px 12px;
        border-radius: 6px;
        font-size: 14px;
        transition: 0.25s;
        color: white;
    }

    .edit-btn {
        background: #10b981;
    }
    .edit-btn:hover {
        background: #059669;
    }

    .delete-btn {
        background: #ef4444;
    }
    .delete-btn:hover {
        background: #dc2626;
    }

    .back-btn {
        display: inline-block;
        margin-top: 25px;
        padding: 10px 18px;
        background: #4b5563;
        color: white;
        text-decoration: none;
        border-radius: 8px;
        transition: 0.25s;
    }

    .back-btn:hover {
        background: #374151;
    }
</style>

</head>
<body>

<div class="container">

<%
    AdminBean adminBean = (AdminBean)session.getAttribute("adminData");
    ArrayList<ProductBean> list = (ArrayList<ProductBean>)session.getAttribute("listOfProduct");
%>

<h2>Welcome <%= adminBean.getFname() %>  Product Management</h2>

<%
    if (list == null || list.size() == 0) {
%>
        <div class="empty">No Products Available</div>
<%
    } else {
%>

<table>
    <tr>
        <th>Code</th>
        <th>Name</th>
        <th>Company</th>
        <th>Price (₹)</th>
        <th>Qty</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

<%
    Iterator<ProductBean> it = list.iterator();
    while (it.hasNext()) {
        ProductBean p = it.next();
%>
        <tr>
            <td><%= p.getProductCode() %></td>
            <td><%= p.getProductName() %></td>
            <td><%= p.getProductCompany() %></td>
            <td><%= p.getProductPrice() %></td>
            <td><%= p.getProductQuantity() %></td>

            <td>
                <a class="action-btn edit-btn" 
                   href="edit?productcode=<%= p.getProductCode() %>">Edit</a>
            </td>

            <td>
                <a class="action-btn delete-btn" 
                   href="delete?productcode=<%= p.getProductCode() %>">Delete</a>
            </td>
        </tr>
<%
    }
%>

</table>

<%
    }
%>

<center>
    <a href="index.html" class="back-btn">Back To Home</a>
</center>

</div>

</body>
</html>
