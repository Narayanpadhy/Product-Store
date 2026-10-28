<%@page import="com.achyuta.product_envintory.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #eef2ff, #f9fafb);
        margin: 0;
        padding: 40px 15px;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: flex-start;
    }

    .dashboard {
        width: 100%;
        max-width: 900px;
        animation: fadeIn 1s ease-in-out;
    }

    /* Glass-Effect Welcome Card */
    .welcome-card {
        background: rgba(255, 255, 255, 0.85);
        border-radius: 20px;
        padding: 35px;
        margin-bottom: 35px;
        text-align: center;
        border: 1px solid rgba(255, 255, 255, 0.5);
        box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        backdrop-filter: blur(10px);
    }

    .welcome-card h2 {
        font-size: 28px;
        font-weight: 650;
        color: #1f2937;
        margin: 0;
    }

    /* Action Cards Layout */
    .action-cards {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
        gap: 25px;
    }

    /* Individual Card */
    .card {
        background: white;
        border-radius: 16px;
        padding: 30px 25px;
        text-align: center;
        text-decoration: none;
        color: #111;
        border-top: 5px solid #6366f1;
        box-shadow: 0 6px 18px rgba(0,0,0,0.12);
        transition: 0.3s ease;
        transform: translateY(0);
    }

    .card:hover {
        transform: translateY(-8px);
        box-shadow: 0 12px 28px rgba(0,0,0,0.18);
    }

    .card h3 {
        font-size: 20px;
        margin-bottom: 12px;
        color: #1f2937;
    }

    .card p {
        color: #6b7280;
        font-size: 15px;
        line-height: 1.5;
        margin: 0;
    }

    /* Color themes */
    .card:nth-child(1) {
        border-top-color: #4f46e5;
    }
    .card:nth-child(2) {
        border-top-color: #7c3aed;
    }
    .card:nth-child(3) {
        border-top-color: #ef4444;
    }

    .card:nth-child(1):hover { background: #eef2ff; }
    .card:nth-child(2):hover { background: #faf5ff; }
    .card:nth-child(3):hover { background: #fef2f2; }

    /* Fade animation */
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(10px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    /* Mobile Adjustments */
    @media (max-width: 600px) {
        .welcome-card { padding: 25px; }
        .welcome-card h2 { font-size: 22px; }

        .card { padding: 25px; }
    }
</style>

</head>
<body>

<div class="dashboard">
    <%
        AdminBean adminBean = (AdminBean) session.getAttribute("adminData");
    %>

    <div class="welcome-card">
        <h2>Welcome, <%= adminBean.getFname() %> 👋</h2>
    </div>

    <div class="action-cards">
        <a href="viewProduct" class="card">
            <h3>View Products</h3>
            <p>Browse, update or remove products easily</p>
        </a>
        
        <a href="AddProduct.html" class="card">
            <h3>Add Product</h3>
            <p>Add new items to inventory with one click</p>
        </a>
        
        <a href="LogOut" class="card">
            <h3>Logout</h3>
            <p>Exit the admin portal securely</p>
        </a>
    </div>
</div>

</body>
</html>
