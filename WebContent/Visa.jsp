<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Visa Credit card payment</h2>
<hr>
<%
double amt=Double.parseDouble(request.getParameter("amount"));
%>
Transaction amount Rs. <%=amt %>
</body>
</html>