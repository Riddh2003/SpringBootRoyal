<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br>
	<a href="searchEmp">Search</a>
	<br><br>
	<table border="1">
		<tr>
			<th>EID</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Password</th>
		</tr>
		<c:forEach items="${employee}" var="e">
		<tr>
			<td>${e.id}</td>
			<td>${e.firstName}</td>
			<td>${e.lastName}</td>
			<td>${e.email}</td>
			<td>${e.password}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>