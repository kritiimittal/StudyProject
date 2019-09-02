<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
        <script>
            $(document).ready(function() {
                $(function() {
                    $("#search").autocomplete({
                        source: function(request, response) {
                            $.ajax({
                                url: "CountryListCheck",
                                type: "GET",
                                data: {
                                    term: request.term
                                },
                                dataType: "json",
                                success: function(data) {
                                    response(data);
                                }
                            });
                        }
                    });
                });
            });
        </script>
 
</head>
<body>
<%@ include file="header.jsp"%>
<h3 style="color:red">${filesuccess}</h3>  
<form:form method="post" action="savefile" enctype="multipart/form-data">  

TITLE :
<input type="text" name= "title"></input>
<br>
<div class="search-container">
            <div class="ui-widget" >
                Subject:
                <input type="text" id="search" name="search" class="search" />
             
        <br></div></div>

<label for="image">ATTACH FILE :

</label>


<input name="file" id="fileToUpload" type="file" /><br>
<p><input type="Submit" value="Recommend Me:)"></p>  
</form:form>  


</body>
</html>