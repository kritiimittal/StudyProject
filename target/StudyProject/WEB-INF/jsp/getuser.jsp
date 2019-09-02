<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>

</head>

<body>

Subject <select name="sub">

<%

String b=request.getParameter("b");

String s=request.getParameter("s");
//out.print(l);
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/student","root","1234");
		  Statement statement = connection.createStatement();

	 
  String query="select distinct subject from  download where branch ='"+b+"' and semester='"+s+"'";
  ResultSet rs = statement.executeQuery(query);
%>


<%

 while(rs.next())
 {
 %>

 <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>


<% 
 }

%></select>
</body>
</html>
