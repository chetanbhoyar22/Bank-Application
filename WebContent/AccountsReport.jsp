<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="mybeans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("userid")!=null)
{
%>
<h2>Accounts Report</h2>
<hr>
<table width="450px" border="1" cellspacing="0" bordercolor="azure">
<tr style="background-color:seashell">
<th>Account ID
<th>Name
<th>Type
<th>Balance
</tr>

<%
Connection con;
PreparedStatement pst;
ResultSet rs;

try
{
	//Class.forName("com.mysql.cj.jdbc.Driver");
	//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chetan?user=root&password=12345");
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection();
	pst=con.prepareStatement("select * from accounts;");
	
	rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString("id") %>
		<td><%=rs.getString("accnm") %>
		<td><%=rs.getString("acctype") %>
		<td><%=rs.getString("balance") %>
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
<%
}
else
{
	%>
	<h3 style="color:red">Invalid session</h3>
	<a href="index.jsp">Login now</a>
	
	<%
}
%>

</body>
</html>