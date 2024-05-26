<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Sum of Index</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        margin: 5%;
    }

    .container {
        background-color: #fff;
        padding: 20px 30px;
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        max-width: 600px;
        width: 100%;
    }

    h2 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    .info {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-bottom: 15px;
    }

    .info div {
        margin: 5px 0;
    }

    .result {
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #e0f7fa;
        color: #00796b;
        padding: 10px;
        border-radius: 5px;
        font-weight: bold;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Find Sum of Index</h2>
    <div class="info">
        <div><strong>Array:</strong> ${array.array}</div>
        <div><strong>Target:</strong> ${array.target}</div>
    </div>
    <div class="result">
        Index: ${ans[0]}, ${ans[1]}
    </div>
</div>
</body>
</html>
