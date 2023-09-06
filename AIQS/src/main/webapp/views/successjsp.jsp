<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Head section code -->
</head>
<body>
    <!-- Container code -->
    <div class="container">
        <div class="form-container">
            <!-- Form code -->
            <form action="/update" method="post">
                <!-- Form fields -->
            </form>
            <!-- Success message -->
            <div class="mt-3">
                <c:if test="${success}">
                    <div class="alert alert-success" role="alert">
                        Profile updated successfully.
                    </div>
                </c:if>
            </div>
            <!-- Back button -->
            <form action="/home" class="mt-3">
                <input class="btn btn-danger" type="submit" value="Back">
            </form>
        </div>
    </div>
    <!-- JavaScript code -->
</body>
</html>
