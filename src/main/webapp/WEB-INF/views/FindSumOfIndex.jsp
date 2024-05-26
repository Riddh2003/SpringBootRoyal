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
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    h2 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    .form-group {
        display: flex;
        flex-direction: column;
        margin-bottom: 15px;
        width: 100%;
    }

    .form-group label {
        margin-bottom: 5px;
        color: #555;
    }

    .form-group input {
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: 100%;
        box-sizing: border-box;
    }

    .submit-btn {
        background-color: #00796b;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 20px;
    }

    .submit-btn:hover {
        background-color: #004d40;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Find Sum of Index</h2>
    <form action="findindex" method="post">
        <div class="form-group">
            <label for="array">Array</label>
            <input type="text" id="array" name="array" />
        </div>
        <div class="form-group">
            <label for="target">Target</label>
            <input type="text" id="target" name="target" />
        </div>
        <input type="submit" value="SUBMIT" class="submit-btn"/>
    </form>
</div>
</body>
</html>
