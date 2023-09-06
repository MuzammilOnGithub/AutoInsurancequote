<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Insurance Premium</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <style>
       body {
    padding: 0;
    margin: 0;
    background: linear-gradient(to right, #36D1DC, #5B86E5);
    font-family: 'Montserrat', sans-serif;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.navbar {
    width: 100%;
    /* Add your navbar styles here */
}

.container {
    max-width: 600px;
    margin: auto;
    background-color: #fff;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
}

/* rest of your styles... */
       

        h1, h2, p {
            color: #2f3542;
            text-align: center;
            text-shadow: 1px 1px 1px rgba(0,0,0,0.1);
        }

        .premium-text {
            font-size: 24px;
            color: #57606f;
        }

        .form-group {
            margin-bottom: 25px;
        }

        .btn {
            display: block;
            width: 100%;
            color: #fff;
            background-color: #1e90ff;
            border: none;
            padding: 15px 0;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 30px;
            transition: background-color 0.3s ease;
        }
        btn:hover {
            background-color: #007acc;
        }

        .btn.small {
            width: auto;
            padding: 8px 15px;
            font-size: 0.8em;
        }

        .hide-initially {
            display: none;
        }
        
    </style>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.all.min.js"></script>
    
    <script>
    window.onpageshow = function(event) {
        if (event.persisted) {
            window.location.reload();
        }
    };

    function showSuccessMessage(insurance, discount) {
        let premium = ${insurance.premium};
        let finalPrice = premium - premium * discount;

        let message = 'You have selected ' + insurance + ' - ' + discount * 100 + '% discount. Your final price is ' + finalPrice + '.';
        Swal.fire({
            title: 'Thank you!',
            text: message,
            icon: 'success',
        });

        // Update final price on the page
        document.getElementById('finalPrice').innerText = 'Final Price: ' + finalPrice;

        // Hide the top section and show the bottom section
        document.getElementById('topSection').style.display = 'none';
        document.getElementById('bottomSection').style.display = 'block';
    }

    function handleInsuranceSelection(e) {
        e.preventDefault();
        let insurance = document.querySelector('input[name="insurance"]:checked').value;
        if (insurance === 'abc') {
            showSuccessMessage('ABC Insurance', 0.2);
        } else if (insurance === 'xyz') {
            showSuccessMessage('XYZ Insurance', 0.3);
        }

        // AJAX form submission
        $.ajax({
            url: '/applyDiscount',
            type: 'post',
            data: $('form').serialize(),
            success: function() {
                // handle success if needed
            }
        });
    }
    </script>
</head>
<body>
  <jsp:include page="navbar.jsp" />
    
    <div class="container">
        <div id="topSection">
            <h1 class="mb-4">Insurance Premium</h1>
            <p class="premium-text">Premium: ${insurance.premium}</p>

            <h2 class="mt-5">Select your insurance provider:</h2>
            <form onsubmit="handleInsuranceSelection(event)">
                <input type="hidden" name="premium" value="${insurance.premium}">
                <div class="form-group">
                    <input type="radio" id="abc" name="insurance" value="abc">
                    <label for="abc" class="insurance-label">ABC Insurance - 20% discount</label>
                </div>
                <div class="form-group">
                    <input type="radio" id="xyz" name="insurance" value="xyz">
                    <label for="xyz" class="insurance-label">XYZ Insurance - 30% discount</label>
                </div>
                <button type="submit" class="btn btn-primary">Apply Discount</button>
            </form>
        </div>
        <div id="bottomSection" class="hide-initially">
            <h2 class="mt-5" id="finalPriceTitle">Final Price:</h2>
            <p id="finalPrice" class="premium-text">Final Price: ${insurance.finalPrice}</p>

            <input type="hidden" name="premium" value="${insurance.premium}">
            <a href="/processPayment" class="btn btn-primary" id="payNowButton">Pay Now</a>
            <a href="/home" class="btn btn-primary" id="goHomeButton">Go Home</a>
        </div>
    </div>
</body>
</html>
