<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uid=String.valueOf(session.getAttribute("userid"));
%>
<h2>User profile for <%=uid %></h2>
<hr>
<table width="450px" border="1" cellspacing="0" bordercolor="azure">
<%
Connection con;
PreparedStatement pst;
ResultSet rs;

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chetan?user=root&password=12345");
	pst=con.prepareStatement("select * from userpersonal where userid=?;");
	pst.setString(1,uid);
	rs=pst.executeQuery();
	if(rs.next())
	{
		%>
		<tr>
		<td>Joining Date
		<td><%=rs.getString("regdt") %>
		</tr>
		
		<tr>
		<td>City
		<td><%=rs.getString("city") %>
		</tr>
		
		<tr>
		<td>Mobile
		<td><%=rs.getString("mobile") %>
		</tr>
		
		<tr>
		<td>EmailID
		<td><%=rs.getString("email") %>
		</tr>	
	<%	
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</table>
<br>
<a href="Customer.jsp">Home</a>

</body>
</html>