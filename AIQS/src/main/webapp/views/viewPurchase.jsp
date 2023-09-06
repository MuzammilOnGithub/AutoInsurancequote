<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Invoice</title>
    <style>
        body {
            font-family: 'Courier New', monospace;
            background-color: #fff;
        }

        .container {
            max-width: 800px;
            margin: auto;
            padding: 30px;
        }

        .section {
            border-bottom: 1px solid #000;
            padding: 10px 0;
        }

        .btn {
            display: inline-block;
            font-weight: 400;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            color: #fff;
            background-image: linear-gradient(to right, #3498db, #2980b9);
            border: 1px solid transparent;
            padding: .75rem 1.5rem;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: .3rem;
            transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
            text-decoration: none;
            margin-top: 20px;
        }

        .btn:hover {
            background-image: linear-gradient(to right, #2980b9, #3498db);
            text-decoration: none;
        }
    </style>
</head>
<body>
 
<div class="container">
    <h2>INVOICE</h2>

    <div class="section">
        <strong>Policyholder</strong><br>
        Name: ${policyholder.name}<br>
        Vehicle Number: ${policyholder.vehiclenumber}<br>
    </div>

    <div class="section">
        <strong>Quotes</strong><br>
        | ID      | Showroom Price   | IDV         | Premium               |<br>
        <c:forEach var="quote" items="${quotes}">
        | ${quote.id}  | ${quote.showroomPrice} | ${quote.idv} | ${quote.premium} |<br>
        </c:forEach>
    </div>

    <div class="section">
        <strong>Insurances</strong><br>
        | Insurance Name    | Premium     | Final Price                   |<br>
        <c:forEach var="insurance" items="${insurances}">
        | ${insurance.insuranceName} | ${insurance.premium} | ${insurance.finalPrice} |<br>
        </c:forEach>
    </div>

    <button onclick="window.print();" class="btn">Print Invoice</button>
</div>
</body>
</html>
