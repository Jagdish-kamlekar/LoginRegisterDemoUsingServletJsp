
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    HttpSession userSession = request.getSession(false);
    String email = (userSession != null) ? (String) userSession.getAttribute("email") : null;
    
    if (email == null) {
        response.sendRedirect("login.jsp"); // Redirect if user is not logged in
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
    @charset "UTF-8";

    /* General Reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        line-height: 1.6;
        background: linear-gradient(135deg, #74ebd5, #acb6e5);
        color: white;
        min-height: 100vh;
        overflow-x: hidden;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
        padding: 20px;
    }

    header {
        margin-bottom: 30px;
    }

    header h1 {
        font-size: 3rem;
        color: black;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.4);
    }

    header p {
        font-size: 1.2rem;
        margin-top: 10px;
        color: black;
    }

    nav {
        margin-top: 20px;
    }

    nav a {
        text-decoration: none;
        background: white;
        color: black;
        padding: 10px 20px;
        margin: 0 10px;
        border-radius: 5px;
        font-size: 1.2rem;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0);
        transition: background 0.3s, color 0.3s;
    }

    nav a:hover {
        background: #ffc107;
        color: black;
    }

    footer {
        margin-top: 40px;
        font-size: 0.9rem;
        color: black;
    }
</style>
</head>
<body>

<p style="color:red;"><%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %></p>
<header>
    <h1>Welcome to Our Website!</h1>
    <p>Your one-stop solution for everything you need.</p>
    <h3>Hello, <%= email %>!</h3>
</header>


<nav>
    <a href="#">Home</a>
    <a href="./personalinfo.jsp">Personal Info</a>
    <a href="#">Contact</a>
    <a href="./login.jsp">Log Out</a>
</nav>

<footer>
    &copy; 2025 Your Website Name. All Rights Reserved.
</footer>

</body>
</html>
