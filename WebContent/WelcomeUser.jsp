<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%
String nm=request.getParameter("usernm");
out.println("Welcome "+nm.toUpperCase()+" to AJAX");
out.println("<br>Length of your name is "+nm.length());
out.println("<br>Length of your name is "+nm.replace('a', 'e'));
%>
</body>
</html>