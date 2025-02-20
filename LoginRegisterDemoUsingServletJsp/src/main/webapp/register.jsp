<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Form</title>
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

        .register-container {
            background: #fff;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .register-container h2 {
            margin: 0 0 1.5rem;
            font-size: 1.8rem;
            text-align: center;
            color: #333;
        }

        .register-container form {
            display: flex;
            flex-direction: column;
        }

        .register-container label {
            margin-bottom: 0.5rem;
            font-weight: bold;
            color: #555;
        }

        .register-container input {
            padding: 0.8rem;
            margin-bottom: 0.3rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
        }

        .register-container input:focus {
            outline: none;
            border-color: #ff9a9e;
            box-shadow: 0 0 5px rgba(255, 154, 158, 0.5);
        }

        .register-container button {
            padding: 0.8rem;
            font-size: 1rem;
            background: blue;
            border: none;
            border-radius: 8px;
            color: #fff;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .register-container button:hover {
            background: darkblue;
        }

        .register-container .login {
            text-align: center;
            margin-top: 1rem;
            font-size: 0.9rem;
            color: #777;
        }

        .register-container .login a {
            color: blue;
            text-decoration: none;
        }

        .register-container .login a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Register</h2>
        <form action="./RegisterServlet" method="post">
        
        	<label for="email">First Name</label>
            <input type="text" id="email" placeholder="Enter your First Name" name="fname" required>
            
            <label for="email">Last Name</label>
            <input type="text" id="email" placeholder="Enter your Last Name" name="lname" required>
        	
            <label for="email">Email</label>
            <input type="email" id="email" placeholder="Enter your email" name="email" required>

            <label for="name">Mobile No</label>
            <input type="text" id="name" placeholder="Enter your full name" name="mobile" required>

            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Create a password" name="pass" required>
            
            <label for="email">Address</label>
            <input type="text" id="email" placeholder="Enter your Address" name="add" required>

            <button type="submit">Register</button>
        </form>
        <div class="login">
            Already have an account? <a href="./login.jsp">Login here</a>
        </div>
    </div>
</body>
</html>
