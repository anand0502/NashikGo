<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html>
<html>
<head>
    <title>Tourist Gallery</title>
    <link rel="stylesheet" href="/css/style.css">

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f0f0;
        }

        header {
            background: #2c3e50;
            color: white;
            padding: 25px;
            text-align: center;
        }

        .options {
            display: flex;
            justify-content: center;
            gap: 40px;
            padding: 50px;
            flex-wrap: wrap;
        }

        .card {
            position: relative;
            width: 300px;
            height: 400px;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            cursor: pointer;
            transition: transform 0.4s ease;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .card .overlay {
            position: absolute;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            color: white;
            width: 100%;
            padding: 15px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }

        footer {
            background: #2c3e50;
            color: white;
            text-align: center;
            padding: 20px;
        }
    </style>
</head>
<body>

<header>
    <h2>Choose Your Tourist Preference</h2>
</header>

<div class="options">
    <div class="card" onclick="window.location.href='/waterfalls'">
        <img src="/images/wf.jpg" alt="Waterfall">
        <div class="overlay">Majestic Waterfall</div>
    </div>

    <div class="card" onclick="window.location.href='/forts'">
        <img src="/images/fort.jpg" alt="Fort">
        <div class="overlay">Historic Fort</div>
    </div>

    <div class="card" onclick="window.location.href='/temples'">
        <img src="/images/temp.jpg" alt="Temple">
        <div class="overlay">Ancient Temple</div>
    </div>
    
  <div class="card" onclick="window.location.href='/food'">
    <img src="/images/food.jpg" alt="Food">
    <div class="overlay">Delicious Food</div>

</div>
    
    
</div>

<footer>
    <p>&copy; 2026 KUMBH-NASHIK. All rights reserved.</p>
</footer>

</body>
</html>
