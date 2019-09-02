<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
body {
	background: #e6ffff;
}
</style>

</head>
<body>

	<%@ include file="header.jsp"%>
	<br>
	<br>
	<h3>WELCOME TO UPLOAD PAGE</h3>
	<br>
	<br>
	<div class="container">
	<a href="uploadnotes" class="btn btn-info btn-primary btn-lg" >UPLOAD NOTES</a>	
	
	<a href="uploadplaylist" class="btn btn-info btn-primary btn-lg" >UPLOAD YOUTUBE PLAYLIST</a>	
	
	<a href="uploadbooks" class="btn btn-info btn-primary btn-lg" >UPLOAD E-BOOKS</a>	
	</div>
</body>
</html>