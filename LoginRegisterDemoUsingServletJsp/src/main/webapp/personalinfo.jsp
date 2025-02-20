<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personal Information</title>
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

    section {
        margin: 30px 0;
        background: rgba(255, 255, 255, 0.2);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 600px;
    }

    section h2 {
        font-size: 2rem;
        margin-bottom: 20px;
    }

    section p {
        font-size: 1.2rem;
        margin-bottom: 10px;
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

<header>
    <h1>Personal Information</h1>
    <p>Manage and view your personal details here.</p>
</header>

<nav>
    <a href="./home.jsp">Home</a>
    <a href="#">Personal Info</a>
    <a href="#">Contact</a>
    <a href="./login.jsp">Log Out</a>
</nav>

<section>
    <h2>Your Details</h2>
    <p><strong>Name:</strong> -------</p>
    <p><strong>Email:</strong> ----</p>
    <p><strong>Phone:</strong> ----</p>
    <p><strong>Address:</strong> ---</p>
</section>

<footer>
    &copy; 2025 Your Website Name. All Rights Reserved.
</footer>

</body>
</html>
