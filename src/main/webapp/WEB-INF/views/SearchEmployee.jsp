<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Employee</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        display: flex;
        justify-content: center;
        margin-top:5%;
        background-color: #f0f8ff;
    }
    .form-container {
        background-color: #ffffff;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        width: 300px;
        display: flex;
        flex-direction: column;
    }
    .form-container label {
        margin-bottom: 5px;
        color: #333;
    }
    .form-container input[type="text"] {
        width: 90%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .form-container input[type="submit"] {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    .form-container input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="form-container">
        <form action="searchEmp" method="post">
            <strong>FirstName:</strong>
            <input type="text" name="firstName" />
            <input type="submit" value="Submit" />
        </form>
    </div>
</body>
</html>
