<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6);
        color: #444;
    }

    .container {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.9);
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    h4 {
        text-align: center;
        font-size: 24px;
        margin-bottom: 20px;
        color: #4a4a4a;
        font-weight: 600;
    }

    form {
        margin-bottom: 20px;
    }

    form input[type="text"],
    form input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    form input[type="submit"] {
        display: block;
        width: 100%;
        padding: 10px;
        background-color: #2c3e50;
        color: #ffffff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: 0.3s all;
    }

    form input[type="submit"]:hover {
        background-color: #1a2530;
    }

    .text-danger {
        text-align: center;
        color: #e53935;
        margin-top: 10px;
        font-weight: 600;
    }

    .register-link {
        text-align: center;
        margin-top: 10px;
    }

    .register-link a {
        color: #2c3e50;
        text-decoration: none;
        font-weight: bold;
    }

    .login-image{
        width: 100%;
        display: block;
        margin-top: 50px;
    }
</style>
</head>
<body>
<div class="container">
    <h4>Login</h4>
    <form action="/login" method="post">
        <div>
            <input type="text" name="username" required placeholder="Enter Username">
        </div>
        <div>
            <input type="password" name="password" required placeholder="Enter Password">
        </div>
        <input class="btn btn-success" type="submit" value="Login">
    </form>
    <div class="text-danger">
        <b>${response}</b>
    </div>
    <div class="register-link">
        Don't have an account? <a href="/register">Register</a>
    </div>
   
</div>
</body>
</html>