<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Change Password Result</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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

    h3 {
        text-align: center;
        font-size: 24px;
        margin-bottom: 20px;
        color: #4a4a4a;
        font-weight: 600;
    }

    .text-danger {
        text-align: center;
        color: #e53935;
        margin-top: 10px;
        font-weight: 600;
    }

    .small {
        text-align: center;
        margin-top: 10px;
        font-weight: 600;
    }
  </style>
</head>
<body>
  <div class="container">
    <h3>Change Password Result</h3>
    <div class="card-body">
      <div class="small mb-3 text-muted">${message}</div>
      <p class="text-danger">${error}</p>
    </div>
    <div class="card-footer text-center">
      <div class="small"><a href="/home">Go back to Home</a></div>
    </div>
  </div>
</body>
</html>
