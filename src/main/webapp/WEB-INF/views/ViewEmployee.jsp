<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
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
    }
    .employee-info label {
        margin-bottom: 10px;
        color: #333;
    }
    .employee-info a {
        margin-top: 20px;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        text-decoration: none;
        text-align: center;
        border-radius: 4px;
        display: inline-block;
    }
    .employee-info a:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="employee-info">
        <h2>View Employee</h2>
        <label>FirstName: ${employee.firstName}</label>
        <label>LastName: ${employee.lastName}</label>
        <label>Email: ${employee.email}</label>
        <label>Password: ${employee.password}</label>
        <label>Age: ${employee.age}</label>
        <label>Hobby: ${employee.hobby}</label>
        <label>Address: ${employee.address}</label>
        <label>City: ${employee.city}</label>
        <label>Gender: ${employee.gender}</label>
        <a href="listEmp">List of Employee</a>
    </div>
</body>
</hlabel