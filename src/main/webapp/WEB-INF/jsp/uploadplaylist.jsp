<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Saira+Semi+Condensed:400,700&display=swap" rel="stylesheet"> 
</head>
<style>
.col-2{
font-family: 'Saira Semi Condensed', sans-serif;
font-weight:900;
}
.container .row {
background:transparent;
}
</style>

</head>
<body>

	<%@ include file="header.jsp"%>
	<div class="container">
	<div class="row mt-5">
	<div class="col-md-10 col-10 col-sm-10">
<form:form method="post" action="savefile2">  
<div class="form-group row">
<div class="col-2">TITLE</div><div class="col-8"><input type="text" name= "title" class="form-control"></input></div></div>
<div class="form-group row">
<div class="col-2">SUBJECT</div><div class="col-8"><input type="text" name= "subject" class="form-control"></input></div></div>
<div class="form-group row">
<div class="col-2">ATTACH URL</div><div class="col-8"><input type="text" name= "file1" class="form-control"></input></div></div>
<div class="form-group align-self-center text-center row">
<div class="col-3 align-self-center offset-md-4">
<input type="submit" value="Upload" class="bg-primary text-white form-control"></div></div>
</form:form>  
</div>
</div>
<div class="col-md-2 col-2 col-sm-2"></div>
</div>
</body>
</html>