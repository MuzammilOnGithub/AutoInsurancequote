<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auto Insurance</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body, h1, h2, h3, h4, h5, h6, p, a {
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6);
            color: #000;
        }

        .navbar {
            box-shadow: 0 2px 10px 0 rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #ffffff;
            font-size: 2.5rem;
            font-weight: 600;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: transform .2s;
            animation: adAnimation 2s infinite;
        }

        .card:first-child {
            animation-delay: 0s;
        }

        .card:nth-child(2) {
            animation-delay: 0.5s;
        }

        .card:nth-child(3) {
            animation-delay: 1s;
        }

        @keyframes adAnimation {
            0%, 100% { opacity: 0.5; }
            50% { opacity: 1; }
        }

        .card-img-top {
            border-radius: 10px 10px 0 0;
        }

        .card-body h5 {
            color: #000;
            font-weight: 600;
        }

        .blockquote-footer:before {
            content: "\2014 \00A0";
        }

        .navbar-dark .navbar-brand,
        .navbar-dark .navbar-nav .nav-link {
            color: #fff;
        }

        .btn {
            background-color: #6c757d;
            border-color: #6c757d;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Auto Insurance</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/updateProfile">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/quote/form">Quote</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/viewPurchase">View Purchase</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/changepassword">Change Password</a>
                </li>
            </ul>
            <form class="form-inline" action="/logout">
                <button class="btn btn-danger ml-2" type="submit">Logout</button>
            </form>
        </div>
    </nav>
    <div class="container py-5">
        <h1 class="mb-5 text-center">Welcome to Auto Insurance</h1>
        <div class="row">
            <div class="col-lg-6">
                <blockquote class="blockquote text-center">
                    <p class="mb-0">"The best car insurance policy is the one that fits your needs and gives you peace of mind on the road."</p>
                    <footer class="blockquote-footer text-white">Muzammil <cite title="Source Title">(Agency owner)</cite></footer>
                </blockquote>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card bg-light">
                            <img src="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/auto-insurance-ad-car-insurance-design-template-d63e9776490af25fa08baf57a5bd0788_screen.jpg?ts=1644022652" class="card-img-top" alt="Ad 1">
                            <div class="card-body">
                                <h5 class="card-title text-dark">Save up to 40%</h5>
                                <p class="card-text text-dark">Get a quote now and save up to 40% on your car insurance.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card bg-light">
                            <img src="https://images-platform.99static.com/a77smvPYRI9FitLVByXPuHDwIlU=/500x500/top/smart/99designs-contests-attachments/8/8302/attachment_8302918" class="card-img-top" alt="Ad 2">
                            <div class="card-body">
                                <h5 class="card-title text-dark">Coverage for Every Driver</h5>
                                <p class="card-text text-dark">Whether you're a new driver or have a clean record, we have the coverage options for you.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card bg-light">
                            <img src="https://images-platform.99static.com/66QruliMDiQTLBGR7SinucOvXqE=/500x500/top/smart/99designs-contests-attachments/8/8297/attachment_8297348" class="card-img-top" alt="Ad 3">
                            <div class="card-body">
                                <h5 class="card-title text-dark">24/7 Roadside Assistance</h5>
                                <p class="card-text text-dark">Never worry about being stranded on the road. Our roadside assistance is just a phone call away.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
