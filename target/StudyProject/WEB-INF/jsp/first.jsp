<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title></title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script type="text/javascript">

var xmlhttp;

function showUser(str)
{
xmlhttp=GetXmlHttpObject();
if (xmlhttp==null)
  {
  alert ("Browser does not support HTTP Request");
  return;
  }

var s= document.getElementById("sem").value;

//alert(s+str);

var url="getuser";
url=url+"?b="+str+"&s="+s;

xmlhttp.onreadystatechange=stateChanged;
xmlhttp.open("GET",url,true);
xmlhttp.send(null);



}

function stateChanged()
{
if (xmlhttp.readyState==4)
{
document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
}
}

function GetXmlHttpObject()
{
if (window.XMLHttpRequest)
  {
  // code for IE7+, Firefox, Chrome, Opera, Safari
  return new XMLHttpRequest();
  }
if (window.ActiveXObject)
  {
  // code for IE6, IE5
  return new ActiveXObject("Microsoft.XMLHTTP");
  }
return null;
}

</script>
<style>
body {
	background: #e6ffff;
}
</style>


</head>

<body>

<%@ include file="header.jsp"%>


<form action="viewnotes" ><p>
Semester <select name="sem" id="sem">
       <option>select</option>
          <option>--Select--</option>
          <option>1</option>
          <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>8</option>
        
      </select>
  
  </p>
  <p>
    <% 
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/student","root","1234");
		  Statement statement = connection.createStatement();

	 
  String query="select distinct branch from download";
  ResultSet rs = statement.executeQuery(query);
 

%>
Branch <select name="user" onchange="showUser(this.value)">

<option>select</option>	  
<option>--Select--</option>
     
        <%  while(rs.next())
        	
        	
{%>	    <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
        <%}%>
      </select>
  </p>
  
  
<div id="txtHint">
 <p> Subject <select name="sub">
        <option>select</option>
        <option>--Select--</option>
        
      </select>
  
  
  
  
  
 </p> 
  
  </div>
  
  
<input type="submit" value="Submit" class="btn btn-info btn-primary btn-lg"></input> 

</form>

</body>
</html>
