<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet"/>
    <style>
        body {
            padding: 30px;
            background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6);
            font-family: 'Roboto', sans-serif;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-top: 50px;
        }
        .btn {
            margin-top: 20px;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#paymentForm").validate({
                rules: {
                    cardNumber: {
                        required: true,
                        minlength: 10,
                        digits: true
                    },
                    expiry: {
                        required: true,
                        date: true
                    },
                    cvv: {
                        required: true,
                        minlength: 3,
                        maxlength: 3,
                        digits: true
                    }
                },
                messages: {
                    cardNumber: {
                        required: "Please enter your card number",
                        minlength: "Your card number must be at least 10 digits long",
                        digits: "Please enter only digits"
                    },
                    expiry: {
                        required: "Please enter your card's expiry date",
                        date: "Please enter a valid date"
                    },
                    cvv: {
                        required: "Please enter your card's CVV",
                        minlength: "Your CVV must be 3 digits long",
                        maxlength: "Your CVV must be 3 digits long",
                        digits: "Please enter only digits"
                    }
                }
            });
            $('.btn-primary').click(function() {
                $('form').addClass('animate__animated animate__shakeX');
            });
        });
    </script>
</head>
<body>
<div class="container">
    <form id="paymentForm" action="/processPayment" method="post">
        <div class="form-group">
            <label for="cardNumber">Card Number</label>
            <input type="text" class="form-control" id="cardNumber" name="cardNumber" required>
        </div>
        <div class="form-group">
            <label for="expiry">Expiry Date</label>
            <input type="month" class="form-control" id="expiry" name="expiry" required>
        </div>
        <div class="form-group">
            <label for="cvv">CVV</label>
            <input type="text" class="form-control" id="cvv" name="cvv" required>
        </div>
        <button type="submit" class="btn btn-primary">Proceed Payment</button>
        <button type="button" class="btn btn-danger" onclick="window.location.href='/home';">Cancel</button>
    </form>
</div>
</body>
</html>
