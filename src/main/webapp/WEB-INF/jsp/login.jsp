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

</head>
<style>
body {
background-image:
url("https://cdn.pixabay.com/photo/2016/08/12/03/51/notebook-1587527_960_720.jpg");
background-repeat: no-repeat;
background-position: top;
background-size: cover;
}
</style>
<body>

<%@include file= "header.jsp" %>
<br>
	<h3>LOGIN YOURSELF FIRST TO UPLOAD NOTES</h3>
	<br>
	<div class="col-md-6 bg-transparent">
		<form method="post" action="logged_in">
		<div><h3>${message}</h3></div>
			<div class="form-group ">
				Username :<input name="username" type="text" class="form-control " />
			</div>
			<div class="form-group ">
				Password :<input name="password" type="password"
					class="form-control"></input>
			</div>
			<br>
			<div class="form-group ">
				<input type="submit" value="Login" />
			</div>
		</form>
	<a href="newuser">new user</a>
	</div>
</body>
</html>