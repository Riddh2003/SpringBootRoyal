<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee Info</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 90vh;
        background-color: #f0f8ff;
    }
    .employee-info {
        background-color: #ffffff;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        width: 300px;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
    }
    .employee-info label {
        margin-bottom: 10px;
        color: #333;
    }
</style>
</head>
<body>
    <div class="employee-info">
        <h2>View Employee All Info</h2>
        <label>EID: ${emp.id}</label>
        <label>FirstName: ${emp.firstName}</label>
        <label>LastName: ${emp.lastName}</label>
        <label>Email: ${emp.email}</label>
        <label>Password: ${emp.password}</label>
    </div>
</body>
</html>
