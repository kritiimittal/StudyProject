<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
.login-div {
	background-image:url("https://docs.google.com/uc?id=1I38B1qVeDbQtrrxzXyXFuYWILKS1WkON");
	background-repeat: no-repeat;
	background-position: top;
	background-size: 100% 100%;
}
.header{
height:400px;
}

</style>
</head>
<body>

	<h1>LOGIN YOURSELF FIRST TO UPLOAD NOTES</h1>
	<br>
	<form method="post" action="logged_in">
Username :<input name="username" type="text"/><br>
Password :<input name="password" type="text"/><br>
	<br><input type="submit" value="Login" />
							</form>
</body>
</html>