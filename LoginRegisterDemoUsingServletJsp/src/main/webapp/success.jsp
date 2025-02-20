<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>
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
    }

    /* Success Section */
    .success-section {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        padding: 20px;
        text-align: center;
    }

    .message-container {
        background: white;
        padding: 30px 20px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        max-width: 500px;
        width: 100%;
    }

    h1 {
        font-size: 2.5rem;
        color: black;
        margin-bottom: 20px;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.4);
    }

    p {
        font-size: 1.2rem;
        color: black;
        margin-bottom: 20px;
    }

    a {
        text-decoration: none;
        color: black;
    }

    button {
        background: blue;
        color: #000;
        padding: 10px 20px;
        font-size: 1.2rem;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s;
    }

    button:hover {
        background: #ffc107;
    }
</style>
</head>
<body>

<!-- Success Section -->
<div class="success-section">
    <div class="message-container">
        <h1>Registration Successful!</h1>
        <p>Thank you for registering. Your account has been created successfully.</p>
        <button type="button"> <a href="./login.jsp">Go to Login</a> </button>
    </div>
</div>

</body>
</html>