<!DOCTYPE html>
<%@page import="com.achyuta.product_envintory.AdminBean"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard | Product Inventory</title>


<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #4e54c8, #8f94fb);
        background-size: cover;
        background-position: center;
    }

    
    .dashboard-card {
        width: 380px;
        padding: 40px;
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(12px);
        -webkit-backdrop-filter: blur(12px);
        border-radius: 20px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        text-align: center;
        color: #fff;
        animation: fadeIn 0.8s ease;
    }

    h3 {
        font-size: 22px;
        margin-bottom: 25px;
        font-weight: 600;
    }

    .links a {
        display: block;
        width: 100%;
        padding: 12px 0;
        margin: 10px 0;
        text-decoration: none;
        background: rgba(255,255,255,0.2);
        border-radius: 50px;
        color: #fff;
        font-weight: 500;
        transition: 0.3s;
    }

    .links a:hover {
        background: rgba(255,255,255,0.4);
        transform: translateY(-3px);
        font-weight: 600;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to   { opacity: 1; transform: translateY(0); }
    }
</style>
</head>

<body>
    <div class="dashboard-card">
        <%
            AdminBean bean = (AdminBean) session.getAttribute("adminData");
            String data = (String) request.getAttribute("dataStored");
        %>
        <h3><%= data %> Mr. <%= bean.getFname() %> </h3>

        <div class="links">
            <a href="AddProduct.html"> Add Product</a>
            <a href="viewProduct"> View Products</a>
            <a href="LogOut"> Log Out</a>
        </div>

    </div>
</body>
</html>
