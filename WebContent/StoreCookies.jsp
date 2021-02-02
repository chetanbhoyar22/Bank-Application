<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String c=request.getParameter("choice");
Cookie c1=new Cookie("Interest",c);
c1.setMaxAge(30);
response.addCookie(c1);
%>
<h3>Your choice is stored in cookie</h3>
<hr>
<a href="index.jsp">Home</a>
</body>
</html>