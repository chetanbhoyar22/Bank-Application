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
<h2>Searching account information</h2>
<hr>

<table width="500px" border="1" cellspacing="0" bordercolor="azure">
<tr style="background-color:seashell">
<th>Account ID
<th>Name
<th>Type
<th>Balance
<th>Action
</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
String ty=request.getParameter("typ");
int no;

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chetan?user=root&password=12345");
	pst=con.prepareStatement("select * from accounts where acctype=?;");
	pst.setString(1,ty);
	
	rs=pst.executeQuery();
	while(rs.next())
	{
		no=rs.getInt("id");
		%>
		<tr>
		<td><%=no %>
		<td><%=rs.getString("accnm") %>
		<td><%=rs.getString("acctype") %>
		<td><%=rs.getString("balance") %>
		<td><a href="DeleteAccount.jsp?ano=<%=no%>">Delete</a>
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
</body>
</html>