<%@page import="com.achyuta.product_envintory.AdminBean"%>
<%@page import="com.achyuta.product_envintory.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Product</title>


<style>
    body {
        font-family: Arial, sans-serif;
        background: #f3f4f6;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 420px;
        margin: 60px auto;
        background: #ffffff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        text-align: center;
    }

    h2 {
        margin-bottom: 10px;
        color: #333;
        font-size: 22px;
    }

    table {
        width: 100%;
        margin-top: 15px;
    }

    td {
        padding: 10px 0;
        text-align: left;
        color: #444;
        font-size: 15px;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        margin-top: 5px;
    }

    .btn {
        background: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        cursor: pointer;
        width: 100%;
        margin-top: 20px;
        transition: 0.3s;
    }

    .btn:hover {
        background: #43a047;
    }

    .nav-links {
        margin-top: 15px;
    }

    .nav-links a {
        color: #007bff;
        text-decoration: none;
        margin: 0 15px;
        font-size: 14px;
    }

    .welcome {
        color: #444;
        font-size: 16px;
        margin-bottom: 10px;
    }
</style>

</head>
<body>

<%
    AdminBean bean = (AdminBean)session.getAttribute("adminData");
    ProductBean al = (ProductBean)request.getAttribute("matchedProduct");
%>

<div class="container">

    <div class="welcome">
        Welcome <b><%=bean.getFname() %></b>, please edit the product:
    </div>

    <h2>Edit Product</h2>

    <form action="update" method="post">
        <table>
            <tr>
                <td>Product Code:</td>
                <td><b><%= al.getProductCode() %></b></td>
            </tr>

            <tr>
                <td>Product Price:</td>
                <td><input type="text" name="productPrice" required value="<%= al.getProductPrice() %>"></td>
            </tr>

            <tr>
                <td>Product Quantity:</td>
                <td><input type="text" name="productQuantity" required value="<%= al.getProductQuantity() %>"></td>
            </tr>
        </table>

        <input type="hidden" name="productCode" value="<%= al.getProductCode() %>"/>

        <button class="btn" type="submit">Update Product</button>
    </form>

    <div class="nav-links">
        <a href="viewProduct">Back</a>
        <a href="LogOut">Logout</a>
    </div>
</div>

</body>
</html>
