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
.card{
	box-shadow:0 4px 8px 0 rgba(0,0,0,0.6);
	transition:0.4s;
	width:300px;
	backgroung:#fff;
	text-align:center;
	font-size:16px;
	font-family:sans-serif;
	float:left;
	margin:10px;
	background-image:
url("https://cdn.pixabay.com/photo/2016/08/12/03/51/notebook-1587527_960_720.jpg");
background-repeat: no-repeat;
background-position: top;
background-size: cover;
	
}
.container {
	margin-right: auto;
	margin-left: auto;
	padding-left: 15px;
	padding-right: 15px;
}
</style>

</head>
<body>

	<%@ include file="header.jsp"%>
	<br>
	
	<div class="container">
		<h2 style="font-size: 46px">Upload And Share.</h2>
		<p>Upload your study material and be a helping hand to your
			buddies.</p>
			
	</div>
	<br>

<div class="wrap">
	<div class="card">
		<div class="card-body">
			<a href="uploadnotes" class="btn btn-info btn-primary btn-lg">UPLOAD
				NOTES</a>
		</div>

	</div>
	<div class="card">
		<div class="card-body">
			<a href="uploadplaylist" class="btn btn-info btn-primary btn-lg">UPLOAD
				YOUTUBE PLAYLIST</a>
		</div>

	</div>
	<div class="card">
		<div class="card-body">
			<a href="uploadbooks" class="btn btn-info btn-primary btn-lg">UPLOAD
				E-BOOKS</a>
		</div>
	</div>
</div>

</body>
</html>