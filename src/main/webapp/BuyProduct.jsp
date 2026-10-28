<%@page import="com.achyuta.product_envintory.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.achyuta.customer_bean.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Product</title>

<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    margin: 0;
    padding: 10px;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

.welcome-message {
    background: white;
    padding: 12px 25px;
    border-radius: 8px;
    box-shadow: 0 3px 10px rgba(0, 0, 0, 0.15);
    margin-bottom: 20px;
    text-align: center;
    font-size: 16px;
    font-weight: 500;
    max-width: 400px;
    width: 100%;
}

.form-container {
    background: white;
    padding: 20px 25px;
    border-radius: 12px;
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.18);
    width: 100%;
    max-width: 400px;
}

.form-group {
    margin-bottom: 12px;
}

.form-group label {
    display: block;
    margin-bottom: 4px;
    color: #333;
    font-size: 14px;
}

.form-group input {
    width: 100%;
    padding: 9px;
    border: 1.6px solid #dcdcdc;
    border-radius: 6px;
    font-size: 15px;
    box-sizing: border-box;
}

.form-group input:focus {
    outline: none;
    border-color: #667eea;
    box-shadow: 0 0 0 2px rgba(102, 126, 234, 0.18);
}

.form-group input:read-only {
    background: #f3f3f3;
    color: #555;
}

.submit-btn {
    width: 100%;
    padding: 12px;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    border: none;
    border-radius: 6px;
    font-size: 15px;
    cursor: pointer;
    font-weight: 600;
    margin-top: 8px;
}

.submit-btn:hover {
    transform: translateY(-1px);
    box-shadow: 0 4px 12px rgba(102, 126, 234, 0.35);
}
</style>

</head>
<body>

<%
    CustomerBean bean = (CustomerBean)session.getAttribute("valid");
    ProductBean pb = (ProductBean)request.getAttribute("buy");
%>

<div class="welcome-message">
    Welcome <%= bean.getFirstName() %> !!
</div>

<div class="form-container">
    <form action="buyitem" method="post">

        <div class="form-group">
            <label>Product Code</label>
            <input type="text" name="code" value="<%= pb.getProductCode() %>" readonly>
        </div>

        <div class="form-group">
            <label>Product Name</label>
            <input type="text" name="name" value="<%= pb.getProductName() %>" readonly>
        </div>

        <div class="form-group">
            <label>Product Company</label>
            <input type="text" name="company" value="<%= pb.getProductCompany() %>" readonly>
        </div>

        <div class="form-group">
            <label>Product Price</label>
            <input type="text" name="price" value="<%= pb.getProductPrice() %>" readonly>
        </div>

        <div class="form-group">
            <label>Product Quantity Available</label>
            <input type="text" name="qty" value="<%= pb.getProductQuantity() %>" readonly>
        </div>

        <div class="form-group">
            <label>Quantity Required</label>
            <input type="text" name="reqd" placeholder="Enter required quantity" required>
        </div>

        <button type="submit" class="submit-btn">Buy Now</button>
    </form>
</div>

</body>
</html>
