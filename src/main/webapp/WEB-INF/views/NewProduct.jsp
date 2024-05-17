<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>New Product</h2>
	<form action="saveproduct" method="post">
		Product Name : <input type="text" name="productName"><br>
		<br> Price : <input type="text" name="price"><br>
		<br> Quentity : <input type="text" name="qty"><br>
		<br> Categroy : <input type="text" name="categroy"><br>
		<br> <input type="submit" value="Submit" />
	</form>
</body>
</html>