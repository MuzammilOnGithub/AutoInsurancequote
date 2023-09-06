<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quote Information</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

    <style>
        body {
            padding: 30px;
            background: linear-gradient(to right, #667db6, #0082c8, #0082c8, #667db6);
            color: #fff;
            font-family: 'Roboto', sans-serif;
            height: 100vh;
            margin: 0;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }

        h1, h2 {
            color: #fff;
        }

        form, .table-container {
            max-width: 900px;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }

        .form-label {
            font-weight: bold;
            color: #444;
        }

        .table-responsive {
            margin-top: 20px;
        }

        .table-title {
            font-size: 24px;
            font-weight: bold;
            color: #000;
            margin-bottom: 10px;
        }

        /* Increase input box width */
        .form-control {
            width: 300px;
        }

        .btn-primary {
            color: #fff;
            background-color: #F9D423;  /* updated color */
            border-color: #F9D423;      /* updated color */
            margin-top: 20px;
        }

        .btn-primary:hover {
            background-color: #FF4E50;  /* updated color */
            border-color: #FF4E50;      /* updated color */
        }

        .btn-get-quote {
            color: #fff;  /* updated color */
            background-color: #4CAF50;  /* updated color */
            border-color: #4CAF50;  /* updated color */
            margin-top: 20px;
            width: auto;  /* adjust to content width */
        }

        .btn-get-quote:hover {
            background-color: #45a049;  /* updated color */
            border-color: #45a049;  /* updated color */
        }
        
    </style>
</head>

<body class="animate__animated animate__fadeIn">
  <jsp:include page="navbar.jsp" />

    <h1 class="text-center mb-5">Quote Information</h1>
    <div class="d-flex justify-content-center">
   
        <div class="mr-3">
            <form action="/quote/calculate" method="post" th:object="${quote}" class="animate__animated animate__zoomIn">
                <div class="mb-3">
                    <label
for="showroomPrice" class="form-label">Showroom Price of Vehicle:</label>
                    <input type="number" class="form-control" id="showroomPrice" name="showroomPrice" min="50000" required placeholder="Enter the showroom price">
                </div>
                
                <div class="mb-3">
                    <label for="age" class="form-label">Age of Vehicle:</label>
                    <input type="number" class="form-control" id="age" name="age" required min="0" max="8" placeholder="Enter 0 for new vehicle">
                </div>

                <div class="mb-3">
                    <label for="primaryDriver" class="form-label">Primary Driver:</label>
                    <select class="form-select" id="primaryDriver" name="primaryDriver">
                        <option value="yes">Yes</option>
                        <option value="no">No</option>
                    </select>
                </div>

                <div class="d-flex justify-content-between mt-3">
                    <button type="submit" class="btn btn-get-quote">Get Quote</button>
                    <button type="button" onclick="location.href='/home'" class="btn btn-primary">Back</button>
                </div>
            </form>
        </div>

        <div class="ml-3">
    <div class="table-container animate__animated animate__zoomIn">
        <h2 class="table-title text-center mb-5">Policyholder Details</h2>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Vehicle Number</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Replace with your table row data -->
                     <tr>
                        <td>${policyholder.name}</td>
                        <td id="vehicle-number">${policyholder.vehiclenumber}</td>
                    </tr>
                </tbody>
            </table>
            <div class="mb-3">
    <span style="color: grey;">Buying insurance for another vehicle? </span> <a href="#" id="enterVehicle">click here</a>
                <div id="vehicleInputContainer" style="display:none; border: 1px solid #ccc; padding: 10px; margin-top: 10px;">
                    <input type="text" class="form-control"placeholder="Enter vehicle number " id="vehicle-input" pattern="^([A-Za-z ]+[,.]?[]?|[A-Za_z ]+['-]?)+$" required/>
                    <button type="button" class="btn btn-danger" id="submit-vehicle-number" style="margin-top: 10px;">Submit</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!--... rest of the document ...-->


<script>
  document.getElementById('enterVehicle').addEventListener('click', function(event) {
    event.preventDefault();
    document.getElementById('vehicleInputContainer').style.display = 'block';
  });

  document.getElementById('submit-vehicle-number').addEventListener('click', function() {
    var input = document.getElementById('vehicle-input').value;
    document.getElementById('vehicle-number').innerText = input;
    document.getElementById('vehicleInputContainer').style.display = 'none';
  });
</script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
