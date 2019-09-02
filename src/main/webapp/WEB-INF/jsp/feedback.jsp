<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
</style>

</head>
<body>

	<%@ include file="header.jsp"%>
	<br>

	<h3 style="color: green">${filesuccess}</h3>

	<h3>SHARE YOUR FEEDBACK WITH US</h3>
	<br>
	<div class="col-md-6 bg-transparent">
		<form action="simplemail">
			<div class="form-group ">
				<label>Your name:</label> <input type="text" name="name" required
					class="form-control ">
			</div>
		<div class="form-group ">
				<label>Your email:</label> <input type="email"
					pattern="[^ @]*@[^ @]*" value="" name="email" required
					class="form-control ">
			</div>
			<div class="form-group ">
				<label>Your comments:</label>
				<textarea name="comments" rows="5" cols="50" required
					class="form-control "></textarea>
			</div>
			<input type="submit"
				class="btn btn-info btn-primary btn-lg" value="Submit"> <input
				value="Back" class="btn btn-info btn-primary btn-lg" type="button"
				onclick="history.go(-1);" />
		</form>
	</div>
</body>
</html>