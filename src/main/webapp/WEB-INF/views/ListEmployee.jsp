<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 20px;
	background-color: #f0f8ff;
}

a {
	border: 2px solid #ddd;
	border-radius: 5px; 
	padding : 5px; 
	text-decoration : none;
	color: #0066cc;
	text-decoration: none;
	padding: 5px
}

a:hover {
	background-color: rgba(173, 216, 230, 1);
}

table {
	width: 30%;
	border-collapse: collapse;
	margin-top: 20px;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

tr {
	background-color: #f9f9f9;
}

tr:hover {
	background-color: #f1f1f1;
}

.actions a {
	margin-right: 10px;
}
</style>
</head>
<body>
		<a href="searchEmp">Search</a>
		<table>
			<tr>
				<th>EID</th>
				<th>FirstName</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${employee}" var="e">
				<tr>
					<td>${e.id}</td>
					<td>${e.firstName}</td>
					<td class="actions">
						<a href="deleteEmp?id=${e.id}">DELETE</a>
						<a href="viewEmp?id=${e.id}">VIEW</a>
						<a href="editEmp?id=${e.id}">EDIT</a>
					</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>
