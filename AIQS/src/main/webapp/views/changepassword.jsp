<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Change Password</title>
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
  </style>
</head>
<body>
  <div class="container">
    <h4>Change Password</h4>
    <form action="/changepassword" method="post" onSubmit="return checkPass()">
      <div class="form-group">
          <label class="small mb-1" for="password">Old Password</label>
          <input class="form-control" type="password" name="oldpassword" id="password" placeholder="Enter Old Password" required>
        </div>
        <div class="form-group">
          <label class="small mb-1" for="newpassword">New Password</label>
          <input class="form-control" type="password" name="newpassword" id="newpassword" placeholder="Enter New Password" required pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%&*]).{8,}$" title="Include at least 1 uppercase letter, 1 lowercase letter, 1 digit, 1 special character, and be at least 8 characters long">
        </div>
        <div class="form-group">
          <label class="small mb-1" for="confirm_pass">Confirm Password</label>
          <input class="form-control" name="confirmPass" type="password" required pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%&*]).{8,}$" placeholder="Confirm New Password" title="Include at least 1 uppercase letter, 1 lowercase letter, 1 digit, 1 special character, and be at least 8 characters long" onkeyup="checkNewAndConfirm()" id="confirm_pass">
        </div>
        <small id="invalid-input" class="text-danger"></small>
        <div class="form-group mt-4 mb-0">
          <input class="btn btn-primary btn-block" type="submit" value="Change Password">
        </div>
    </form>
  </div>

  <script type="text/javascript">
    function checkPass() {
      let password = document.getElementById("password").value;
      let newpassword = document.getElementById("newpassword").value;
      let confirm = document.getElementById("confirm_pass").value;
      if (password === confirm) {
        alert("Current password and new password must be different!!");
        return false;
      } else if (newpassword !== confirm) {
        alert("New Password and Confirm Password Should Match");
        return false;
      } else {
        return true;
      }
    }

    function checkNewAndConfirm() {
      let newPass = document.getElementById("newpassword");
      let confirm = document.getElementById("confirm_pass");
      if (newPass.value !== confirm.value) {
        document.getElementById("invalid-input").innerHTML = "New Password and Confirm Password Should Match";
      } else {
        document.getElementById("invalid-input").innerHTML = "";
      }
    }
  </script>
</body>
</html>
