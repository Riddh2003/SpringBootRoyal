<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee</title>
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
    .form-container strong {
        margin-bottom: 5px;
        color: #333;
    }
    .form-container input[type="text"] {
        width: 90%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 15px;
    }
    .form-container input[type="submit"] {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 15px;
    }
    .form-container input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="form-container">
        <form action="updateEmp" method="post">
        
        	<h2>Update Employee</h2>
            <input type="hidden" name="id" value="${emp.id}"/>
            
            <strong>FirstName:</strong><br>
            <input type="text" name="firstName" value="${emp.firstName}" />
            
            <strong>LastName:</strong><br>
            <input type="text" name="lastName" value="${emp.lastName}" />
            
            <strong>Email:</strong><br>
            <input type="text" name="email" value="${emp.email}" />
            
            <strong>Password:</strong><br>
            <input type="text" name="password" value="${emp.password}" />
            
            <input type="submit" value="UPDATE" />
        </form>
    </div>
</body>
</html>
