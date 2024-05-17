<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>SignUp</h1>
	<form action="user" method="post">
		FisrtName : <input type="text" name="firstname" /><br> <br>
		Email : <input type="text" name="email" /><br> <br>
		Password : <input type="text" name="password" /><br> <br> 
		<input type="submit" value="Submit" /><br> <br>
	</form>

	<a href="login">Login</a>
</body>
</html>