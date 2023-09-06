<!DOCTYPE html>
<html lang="en">
<head>
<style>
    body, html {
        padding: 0;
        margin: 0;
    }
    .navbar { /* replace with the actual class or id of your navbar */
        position: relative; /* or 'static' */
        z-index: 9999; 
    }
    .container {
        margin-top: /* height of your navbar */;
    }
</style>


    
</head>
<body class="animate__animated animate__fadeIn">
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
                 <li class="nav-item">
                    <a class="nav-link" href="/logout">logout</a>
                </li>
            </ul>
            
        </div>
    </nav>

    <!-- Your existing HTML code -->

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
