<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Successful</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <style>
        body {
            padding: 30px;
            background: linear-gradient(to right, #B24592, #F15F79);
            color: #444;
            font-family: 'Roboto', sans-serif;
            margin: 0;
        }

        .container {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-top: 50px;
            text-align: center;
        }

        h1 {
            color: #2f3542;
            text-shadow: 1px 1px 1px rgba(0,0,0,0.1);
        }

        .btn {
            color: #fff;
            background-color: #1e90ff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 20px;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #007acc;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="mt-5 animate__animated animate__bounceInDown">Payment Successful</h1>
        <p class="lead mt-4 animate__animated animate__fadeInUp">Thank you for your purchase. Your transaction has been completed, and a receipt for your purchase has been emailed to you.</p>
        <a href="/home" class="btn btn-primary mt-5 animate__animated animate__fadeInUp">Home</a>
    </div>
</body>
</html>
