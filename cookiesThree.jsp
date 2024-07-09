<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Language Selection Confirmation</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        background-color: #4CAF50;
        color: white;
        padding: 20px;
        margin: -20px -20px 20px -20px;
        border-radius: 10px 10px 0 0;
    }
    p {
        font-size: 1.2em;
        color: #333;
    }
    a {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-size: 1em;
    }
    a:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Thank You!</h1>
    <%
        // Read form data
        String fL = request.getParameter("favLang");
        
        // Create a cookie 
        Cookie cc = new Cookie("meriFvrt", fL);
        
        // Set the life span
        cc.setMaxAge(60 * 60 * 24 * 365);
        
        // Send cookie to browser
        response.addCookie(cc);
    %>
    <p>We have saved your favourite language: <%= fL %></p>
    <a href="cookiesOne.jsp">Return to homepage</a>
</div>

</body>
</html>
