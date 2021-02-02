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
<h2>Recover Password....</h2>
<hr>
<%
String id,sq,an,mob,nps;
id=request.getParameter("uid");
sq=request.getParameter("sec");
an=request.getParameter("ans");
Connection con;
PreparedStatement pst;
ResultSet rs;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chetan?user=root&password=12345");
	pst=con.prepareStatement("select * from userpersonal where userid=? and secques=? and answer=?");
	pst.setString(1,id);
	pst.setString(2,sq);
	pst.setString(3,an);
	rs=pst.executeQuery();
	
	if(rs.next())
	{
		mob=rs.getString("mobile");
		nps=id.substring(1,2)+"$"+mob.substring(2,6);
		out.println("<h2 style='color:green'>New Password is "+nps+"</h2>");
		pst=con.prepareStatement("update users set pswd=? where userid=?");
		pst.setString(1,nps);
		pst.setString(2,id);
		pst.executeUpdate();
	}
	else
	{
		out.println("<h2 style='color:red'>User identity failed</h2>");
	}
	con.close();
}
catch(Exception e)
{
	
	out.println(e);
}
%>
<br>
<a href="index.jsp">Home</a>
</body>
</html>