<!DOCTYPE html>
<html>
<head>
    <title>Auto Insurance Quotes</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap');

        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #12c2e9, #c471ed, #f64f59);
            color: #444;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7);
            border: 1px solid #dddddd;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            font-size: 35px;
            font-weight: 500;
            margin-bottom: 20px;
            text-transform: uppercase;
            color: #333;
        }

        .headline-wrapper {
            text-align: center;
            margin-bottom: 40px;
        }

        .headline-box {
            display: inline-block;
            color: #ffffff;
            padding: 10px 20px;
            margin: 0 10px;
            border-radius: 4px;
            animation-name: headlineAnimation;
            animation-duration: 2s;
            animation-iteration-count: infinite;
        }

        .headline-box:nth-child(1) {
            background-color: #c471ed;
        }

        .headline-box:nth-child(2) {
            background-color: #12c2e9;
        }

        .headline-box:nth-child(3) {
            background-color: #f64f59;
        }

        @keyframes headlineAnimation {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
            }
        }

        img {
            display: block;
            margin: 0 auto;
            max-width: 400px;
            height: auto;
            margin-bottom: 20px;
        }

        .quote-details {
            text-align: center;
            margin-bottom: 20px;
            padding: 20px;
            background-color: #E0F0F0;
            border-radius: 4px;
            width: 80%;
            margin: 0 auto;
        }

        .quote-details p {
            font-size: 20px;
            margin: 10px 0;
            color: #555555;
        }

        .register-button {
            text-align: center;
            margin-top: 40px;
        }

        .register-button a {
            display: inline-block;
            padding: 15px 30px;
            background-color: #FF4E50;
            color: #ffffff;
            text-decoration: none;
            font-size: 24px;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease;
        }

        .register-button a:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        p {
            font-size: 18px;
            line-height: 1.5;
            margin-bottom: 10px;
            text-align: center;
            color: #333333;
        }

        .login-button {
            text-align: right;
            margin-top: 20px;
        }

        .login-button a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #9c27b0;  /* Change button color here */
            color: #ffffff;
            text-decoration: none;
            font-size: 18px;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease;
        }

        .login-button a:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

    </style>
</head>
<body>
    <div class="container">
        <div class="login-button">
            <a href="login">Login</a>
        </div>
        <h1>Welcome to Auto Insurance Quotes</h1>
        <div class="headline-wrapper">
            <div class="headline-box">Get Instant Quotes</div>
            <div class="headline-box">Save on Premiums</div>
            <div class="headline-box">Secure Your Vehicle</div>
        </div>
        <div class="quote">
            <img src="https://d11o58it1bhut6.cloudfront.net/production/909/transformed/f_auto-q_70-w_660/v1/909/got_insuranceoriginal-09cbca4f.jpg" alt="Insurance Image">
         
        </div>
        <div class="register-button">
            <a href="register">Register Now!</a>
        </div>
    </div>
</body>
</html>
