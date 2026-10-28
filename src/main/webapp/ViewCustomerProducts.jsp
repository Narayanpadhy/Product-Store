<%@page import="com.achyuta.customer_bean.CustomerBean"%>
<%@page import="com.achyuta.product_envintory.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Products</title>

<style>
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background: #f2f4f7;
        padding: 20px;
    }

    .container {
        max-width: 900px;
        margin: auto;
        background: #fff;
        padding: 25px 40px;
        border-radius: 14px;
        box-shadow: 0px 8px 25px rgba(0,0,0,0.12);
    }

    h2 {
        font-size: 26px;
        margin-bottom: 12px;
        color: #111827;
    }

    .no-data {
        font-size: 18px;
        color: #777;
        text-align: center;
        padding: 40px 0;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 18px;
    }

    th, td {
        padding: 12px 14px;
        text-align: left;
        border-bottom: 1px solid #e5e7eb;
        font-size: 15px;
    }

    th {
        background: #2563eb;
        color: white;
        font-size: 16px;
        letter-spacing: 0.4px;
    }

    tr:hover {
        background: #f3f4f6;
    }

    .buy-btn {
        text-decoration: none;
        padding: 7px 14px;
        background: #10b981;
        color: white;
        border-radius: 6px;
        font-size: 14px;
        transition: 0.25s;
    }

    .buy-btn:hover {
        background: #059669;
    }

    .logout {
        margin-top: 25px;
        display: inline-block;
        text-decoration: none;
        padding: 10px 18px;
        background: #ef4444;
        color: white;
        border-radius: 8px;
        transition: 0.25s;
    }

    .logout:hover {
        background: #dc2626;
    }
</style>

</head>
<body>

<div class="container">

<%
    ArrayList<ProductBean> pBean = (ArrayList<ProductBean>) session.getAttribute("list");
    CustomerBean bean = (CustomerBean) session.getAttribute("valid");
%>

<% if (pBean == null || pBean.size() == 0) { %>

    <div class="no-data">No Products Available</div>

<% } else { %>

    <h2>Welcome <%= bean.getFirstName() %> </h2>

    <table>
        <tr>
            <th>Code</th>
            <th>Name</th>
            <th>Company</th>
            <th>Price (₹)</th>
            <th>Quantity</th>
            <th>Buy</th>
        </tr>

        <% for(ProductBean pb : pBean) { %>
            <tr>
                <td><%= pb.getProductCode() %></td>
                <td><%= pb.getProductName() %></td>
                <td><%= pb.getProductCompany() %></td>
                <td><%= pb.getProductPrice() %></td>
                <td><%= pb.getProductQuantity() %></td>
                <td>
                    <a href="buy?pcode=<%= pb.getProductCode() %>" class="buy-btn">Buy</a>
                </td>
            </tr>
        <% } %>
    </table>

<% } %>

<center>
    <a href="Logout" class="logout">Logout</a>
</center>

</div>

</body>
</html>
