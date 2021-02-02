<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int no=Integer.parseInt(request.getParameter("ano"));
%>
<h2>Deleting account <%=no %>...</h2>
<hr>
<%
Connection con;
PreparedStatement pst;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chetan?user=root&password=12345");
	pst=con.prepareStatement("delete from accounts where id=?;");
	pst.setInt(1,no);
	pst.executeUpdate();
	out.println("account deleted successfully");
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
<br>
<a href="AdminPanel.jsp">Home</a>

</body>
</html>