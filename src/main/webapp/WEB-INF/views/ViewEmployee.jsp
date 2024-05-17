<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewEmployee</title>
</head>
<body>
	<h2>View Employee</h2>
	<strong>FirstName:${employee.firstName}</strong><br><br>
	<strong>LastName:${employee.lastName}</strong><br><br>
	<strong>Email:${employee.email}</strong><br><br>
	<strong>Password:${employee.password}</strong><br><br>
	<strong>Age:${employee.age}</strong><br><br>
	<strong>Hobby:${employee.hobby}</strong><br><br>
	<strong>Address:${employee.address}</strong><br><br>
	<strong>City:${employee.city}</strong><br><br>
	<strong>Gender:${employee.gender}</strong><br><br>
	
	<a href="listEmp">List of Employee</a>
</body>
</html>