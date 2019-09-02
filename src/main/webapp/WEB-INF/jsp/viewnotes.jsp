<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*"%>
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
<style>
body {
	background: #e6ffff;
}
</style>

</head>
<body>
<br>
	<%
		Object subject = request.getAttribute("sub");
		String sub = String.valueOf(subject);
		out.print("Subject  :"+sub);
%>
<br>
<br>
<%
		Object semester = request.getAttribute("sem");
		String sem = String.valueOf(semester);
		out.print("Semester :"+sem);
		 %>
		 <br>
<br>
<%		 
		Object branch = request.getAttribute("user");
		String bran = String.valueOf(branch);
		out.print("Branch :"+bran);
		 %>
		 <br>
		 <br>
		 <%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1234");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select title,notes,playlist,book from download where subject='" + sub + "'");
			//out.print("record inserted");
	%>
	<table border="1">
		<tr>
			<td>Serial no.</td>
			<TD>title</TD>
			<TD>notes</TD>
			<TD>playlist</TD>
			<TD>books</TD>
		</tr>
		<%
			int i = 1;
				while (rs.next()) {
		%>
		<tr>
			<td><%=i++%></td>
			<td><%=rs.getString(1)%></td>
			<td><a href='<%=rs.getString(2)%>' target = "_blank">display</a></td>
			<td><a href='<%=rs.getString(3)%>'>view</a></td>
			<td><a href='<%=rs.getString(4)%>'>Download</a></td>
		</tr>
		<%
			}
			} catch (Exception obj) {
				out.print("error" + obj.getMessage());
			}
		%>
	</table>

</body>
</html>