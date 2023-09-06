<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(to right, #F9D423, #FF4E50);
            color: #444;
        }

        .form-container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            color: #4a4a4a;
        }

        .form-control {
            border-radius: 5px;
        }

        .btn-primary {
            background-color: #FF4E50;
            color: #fff;
            border: none;
            border-radius: 5px;
            transition: all 0.3s ease-in-out;
        }

        .btn-primary:hover {
            background-color: #F9D423;
        }

        .btn-danger {
            background-color: #F9D423;
            color: #fff;
            border: none;
            border-radius: 5px;
            transition: all 0.3s ease-in-out;
        }

        .btn-danger:hover {
            background-color: #FF4E50;
        }
    </style>
</head>
<body>
  <jsp:include page="navbar.jsp" />
    <div class="container py-5">
        <div class="form-container animate__animated animate__fadeIn">
            <h4>Update Profile</h4>
            <form id="updateForm" action="/update" method="post" onsubmit="showConfirmation(event)">
                <!-- rest of the form goes here -->
                
                <input name="id" hidden="hidden" value="${policyholder.id}" />
                <div class="row mb-3">
                    <div class="col">
                        <label class="form-label">Username:</label>
                        <input type="text" class="form-control" name="username" pattern="^([A-Za-z ]+[,.]?[]?|[A-Za_z ]+['-]?)+$" readonly value="${policyholder.username}" />
                    </div>
                    <div class="col">
                        <label class="form-label">Full Name:</label>
                        <input type="text" class="form-control" pattern="^([A-Za-z ]+[,.]?[]?|[A-Za_z ]+['-]?)+$" name="name" value="${policyholder.name}" required/>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col">
                        <label class="form-label">Vehicle Number:</label>
                        <input type="text" class="form-control" pattern="^([A-Za-z ]+[,.]?[]?|[A-Za_z ]+['-]?)+$" name="vehiclenumber" value="${policyholder.vehiclenumber}" required/>
                    </div>
                    <div class="col">
                        <label class="form-label">Email:</label>
                        <input type="email" class="form-control" name="email" value="${policyholder.email}" required/>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col">
                        <label class="form-label">Location:</label>
                        <input type="text" class="form-control" name="location" value="${policyholder.location}" required/>
                    </div>
                    <div class="col">
                        <label class="form-label">Phone Number:</label>
                        <input type="text" class="form-control" pattern="^\d{10}$" name="phoneNumber" value="${policyholder.phoneNumber}" required/>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col">
                        <label class="form-label">Vehicle Year:</label>
                        <input type="number" class="form-control" name="vehicleYear" min="2000" max="2099" value="${policyholder.vehicleYear}" required/>
                    </div>
                    <div class="col">
                        <label class="form-label">Vehicle Model:</label>
                        <input type="text" class="form-control" name="vehicleModel" value="${policyholder.vehicleModel}" required/>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col">
                        <label class="form-label">Chassis Number:</label>
                        <input type="text" class="form-control" name="chassisNumber" value="${policyholder.chassisNumber}" required/>
                    </div>
                    <div class="col">
                        <label class="form-label">Engine Number:</label>
                        <input type="text" class="form-control" name="engineNumber" value="${policyholder.engineNumber}" required/>
                    </div>
                </div>
                <div class="mb-3">
                    <label class="form-label">Primary Driver:</label>
                    <select name="primaryDriver" class="form-select">
                        <option value="self">Self</option>
                        <option value="spouse">Spouse</option>
                        <option value="son">Son</option>
                        <option value="daughter">Daughter</option>
                    </select>
                </div>
                <input type="submit" class="btn btn-primary" value="Update Profile">
            </form>
            <form action="/home" class="mt-3">
                <input class="btn btn-danger" type="submit" value="Back">
            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        function showConfirmation(e) {
            e.preventDefault();
            if (confirm("Profile Updated Successfully. Press OK to continue.")) {
                document.getElementById('updateForm').submit();
            }
        }
    </script>
</body>
</html>
