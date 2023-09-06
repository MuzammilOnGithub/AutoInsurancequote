<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quote Result</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">

    <style>
        body {
            padding: 30px;
            background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6);
            color: #fff;
            font-family: 'Roboto', sans-serif;
        }

        h1 {
            color: #fff;
            font-size: 2.5rem;
            text-align: center;
        }

        table {
            max-width: 600px;
            width: 100%;
            margin: auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            color: #333;
        }

        .table td, .table th {
            vertical-align: middle;
            font-size: 1.2rem;
        }

        .btn-back, .btn-custom-primary {
            display: inline-block;
            width: 48%;
            text-align: center;
            color: #fff;
            background-color: #4caf50;
            border: none;
            padding: 10px 0;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        .btn-back:hover, .btn-custom-primary:hover {
            background-color: #45a049;
        }

        .btn-custom-primary {
            background-color: #f57c00;
        }

        .btn-custom-primary:hover {
            background-color: #f57c00;
        }

        .text-center {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body class="animate__animated animate__fadeIn">

  <jsp:include page="navbar.jsp" />
    <h1 class="mb-5 animate__animated animate__fadeInDown">Quote</h1>
    <table class="table table-striped table-hover animate__animated animate__zoomIn">
        <tr>
            <th>policyId:</th>
            <td>${quote.id}</td>
        </tr>
        <tr>
            <th>Primary Driver:</th>
            <td>${quote.hasPrimaryDriver}</td>
        </tr>
        <tr>
            <th>Show room Price:</th>
            <td>${quote.showroomPrice}</td>
        </tr>
        <tr>
            <th>IDV:</th>
            <td>${quote.idv}</td>
        </tr>
        <tr>
            <th>Premium:</th>
            <td>${quote.premium}</td>
        </tr>
    </table>
    <div class="text-center animate__animated animate__fadeInUp">
        <a href="/quote/form" class="btn-back">Go Back</a>
        <a href="/premium?premium=${quote.premium}" class="btn-custom-primary" target="_blank">view Insurance Providers</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
