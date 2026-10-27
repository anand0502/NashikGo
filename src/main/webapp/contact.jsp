<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us - KUMBH-NASHIK</title>
    <style>
        body {
            margin: 0; padding: 0;
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            animation: fadeIn 1.5s ease-in;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to   { opacity: 1; transform: translateY(0); }
        }
        .container {
            max-width: 500px; margin: 100px auto; background: white;
            border-radius: 12px; padding: 40px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }
        h2 { text-align: center; color: #006699; margin-bottom: 20px; }
        input, textarea {
            width: 100%; padding: 12px; margin: 10px 0; box-sizing: border-box;
            border-radius: 8px; border: 1px solid #ccc; font-size: 16px; transition: 0.3s;
        }
        input:focus, textarea:focus { border-color: #006699; outline: none; }
        button {
            width: 100%; background: #006699; color: white; padding: 12px;
            border: none; font-size: 16px; border-radius: 8px; cursor: pointer;
            transition: background 0.3s;
        }
        button:hover { background: #004d66; }
        .flash-msg { text-align: center; font-weight: bold; color: green; }
    </style>
</head>
<body>

<div class="container">
    <h2>📩 Contact Us</h2>

    <c:if test="${not empty msg}">
        <p class="flash-msg"><c:out value="${msg}"/></p>
    </c:if>

    <form action="${pageContext.request.contextPath}/sendMessage" method="post">
        <input type="text" name="name" placeholder="Your Name" required />
        <input type="email" name="email" placeholder="Your Email" required />
        <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
        <button type="submit">Send Message</button>
    </form>
</div>

</body>
</html>