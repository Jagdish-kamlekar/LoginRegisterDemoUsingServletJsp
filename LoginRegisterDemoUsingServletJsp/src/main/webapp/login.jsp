<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background: #fff;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .login-container h2 {
            margin: 0 0 1.5rem;
            font-size: 1.8rem;
            text-align: center;
            color: #333;
        }

        .login-container form {
            display: flex;
            flex-direction: column;
        }

        .login-container label {
            margin-bottom: 0.5rem;
            font-weight: bold;
            color: #555;
        }

        .login-container input {
            padding: 0.8rem;
            margin-bottom: 1rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
        }

        .login-container input:focus {
            outline: none;
            border-color: #74ebd5;
            box-shadow: 0 0 5px rgba(116, 235, 213, 0.5);
        }

        .login-container button {
            padding: 0.8rem;
            font-size: 1rem;
            background: blue;
            border: none;
            border-radius: 8px;
            color: #fff;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .login-container button:hover {
            background: darkblue;
        }

        .login-container .register {
            text-align: center;
            margin-top: 1rem;
            font-size: 0.9rem;
            color: #777;
        }

        .login-container .register a {
            color: blue;
            text-decoration: none;
        }

        .login-container .register a:hover {
            text-decoration: underline;
        }

        .login-container .forgot-password {
            text-align: right;
            margin-top: -0.5rem;
            margin-bottom: 1rem;
        }

        .login-container .forgot-password a {
            color: blue;
            font-size: 0.9rem;
            text-decoration: none;
        }

        .login-container .forgot-password a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="./LoginServlet" method="post">
            <label for="text">Email Or Mobile No</label>
            <input type="text" id="email" placeholder="Enter your email or mobile no" name = "email" required>

            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Enter your password" name = "pass" required>

            <div class="forgot-password">
                <a href="#">Forgot Password?</a>
            </div>

            <button type="submit">Login</button>
        </form>
        <div class="register">
            Don’t have an account? <a href="./register.jsp">Register here</a>
        </div>
    </div>
</body>
</html>
