<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Register</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(135deg, #667db6, #0082c8, #0082c8, #667db6);
      color: #444;
    }

    .container {
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 20px;
      height: 100vh;
    }

    .card {
      max-width: 600px;  /* Increased card width */
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      background-color: rgba(255, 255, 255, 0.9);
      transition: transform 0.3s;
    }

    .card:hover {
      transform: translateY(-2px);  /* Added a slight hover effect */
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .card-title {
      color: #0082c8;
      font-weight: 600;
      text-align: center;
      margin-bottom: 20px;
      font-size: 28px;  /* Made the title a bit larger */
    }

    .form-control {
      border-radius: 5px;
    }

    .form-group label {
      color: #4a4a4a;
      font-weight: 500;
    }

    .btn {
      background-color: #0082c8;
      color: #ffffff;
      border: none;
      border-radius: 5px;
      padding: 10px 20px;  /* Made the button a bit larger */
      transition: all 0.3s ease-in-out;
    }

    .btn:hover {
      background-color: #005c97;
      color: #ffffff;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .image-container {
      display: flex;
      flex-direction: column;
      justify-content: center;
      margin-left: 20px;
    }

    .image-container img {
      margin-top: 10px;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s;
    }

    .image-container img:hover {
      transform: scale(1.05);
    }
  </style>

  <script>
    function validatePassword() {
      const passwordInput = document.getElementById("password");
      const password = passwordInput.value;
      const pattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[#?!@$%^&*-]).{5,15}$/;

      if (!password.match(pattern)) {
        passwordInput.setCustomValidity("Must contain at least one digit, one lowercase letter, one uppercase letter, one special character, and be 5-15 characters long");
      } else {
        passwordInput.setCustomValidity("");
      }
    }
  </script>
</head>
<body>
  <div class="container animate__animated animate__fadeIn">
    <div class="card">
      <h4 class="card-title">Register</h4>
      <!-- form fields here -->
      <form action="/register" method="post">
        <div class="row">
          <div class="col">
            <div class="form-group">
              <label for="username" class="required-label">Username</label>
              <input type="text" required name="username" pattern="^[A-Za-z0-9]{5,15}$" class="form-control custom-input" id="username" title="Username must be 5-15 characters long and can only contain alphanumeric characters" placeholder="Username"/>
            </div>
          </div>
          <div class="col">
            <div class="form-group">
              <label for="password" class="required-label">Password</label>
              <input type="password" required name="password" class="form-control custom-input" id="password" placeholder="Password" oninput="validatePassword()" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="form-group">
              <label for="name" class="required-label">Full Name</label>
              <input type="text" required name="name" pattern="^([A-Za-z ]+[,.]?[]?|[A-Za_z ]+['-]?)+$" class="form-control custom-input" id="name" placeholder="Full Name" />
            </div>
          </div>
          <div class="col">
            <div class="form-group">
              <label for="vehiclenumber" class="required-label">Vehicle Number</label>
              <input type="text" required name="vehiclenumber" pattern="^([A-Za-z ]+[,.]?[]?|[A-Za_z ]+['-]?)+$" class="form-control custom-input" id="vehiclenumber" placeholder="Vehicle Number" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="form-group">
              <label for="email" class="required-label">Email</label>
              <input type="email" required name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="form-control custom-input" id="email" placeholder="Email" />
            </div>
          </div>
          <div class="col">
            <div class="form-group">
              <label for="location" class="required-label">Location</label>
              <input type="text" required name="location" pattern="^([A-Za-z]+[,.]?[]?|[A-Za_z]+['-]?)+$" class="form-control custom-input" id="location" placeholder="Location" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="form-group">
              <label for="vehicleYear" class="required-label">Vehicle Year</label>
              <input type="number" required name="vehicleYear" class="form-control custom-input" id="vehicleYear" min="2000" max="2099" placeholder="Vehicle Year" />
            </div>
          </div>
          <div class="col">
            <div class="form-group">
              <label for="vehicleModel" class="required-label">Vehicle Model</label>
              <input type="text" required name="vehicleModel" class="form-control custom-input" id="vehicleModel" placeholder="Vehicle Model" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="form-group">
              <label for="chassisNumber" class="required-label">Chassis Number</label>
              <input type="text" required name="chassisNumber" class="form-control custom-input" id="chassisNumber" placeholder="Chassis Number" />
            </div>
          </div>
          <div class="col">
            <div class="form-group">
              <label for="engineNumber" class="required-label">Engine Number</label>
              <input type="text" required name="engineNumber" class="form-control custom-input" id="engineNumber" placeholder="Engine Number" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col">
            <div class="form-group">
              <label for="primaryDriver" class="required-label">Primary Driver</label>
              <select name="primaryDriver" class="form-control custom-select">
                <option value="self">Self</option>
                <option value="spouse">Spouse</option>
                <option value="son">Son</option>
                <option value="daughter">Daughter</option>
              </select>
            </div>
          </div>
        </div>

        <div class="form-group">
          <input class="btn btn-primary btn-slogan custom-button" type="submit" value="Submit" />
        </div>
      </form>
      <div class="error-message">${response}</div>
      <br>
      
      <div>
        <a href="/login" class="btn btn-primary">Already a user? Login here.</a>
      </div>
    </div>
    <div class="image-container animate__animated animate__zoomIn">
      <img src="https://automotivegyaan.in/wp-content/uploads/2023/05/Automobile-20Insurance-20Quotes.jpg" alt="Car Insurance Quotes" style="width: 400px; height: auto;" />
      <img class="additional-image" src="https://img.freepik.com/free-vector/insurance-suggests-automobile-assurance-contract_157667-147.jpg" alt="Additional Image" style="width: 400px; height: auto;" />
    </div>
  </div>
</body>
</html>
