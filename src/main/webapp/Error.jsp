<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Status Message</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: #f2f4f7;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .card {
        background: #fff;
        width: 420px;
        padding: 30px;
        text-align: center;
        border-radius: 14px;
        box-shadow: 0px 4px 20px rgba(0,0,0,0.1);
    }

    h2 {
        font-size: 20px;
        color: #333;
        margin-bottom: 15px;
    }

    .message {
        font-size: 16px;
        color: #444;
        margin-bottom: 25px;
        line-height: 1.5;
    }

    .btn {
        text-decoration: none;
        background: #4CAF50;
        color: #fff;
        padding: 12px 22px;
        border-radius: 8px;
        font-size: 15px;
        transition: 0.3s;
        display: inline-block;
    }

    .btn:hover {
        background: #43a047;
    }
</style>
</head>

<body>

<div class="card">
    <h2>Status Update</h2>

    <div class="message">
        <%
            String data = (String) request.getAttribute("msg");
            out.print(data != null ? data : "No message found");
        %>
    </div>

    <a href="EditProduct" class="btn">Go Back</a>
</div>

</body>
</html>
