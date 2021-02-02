<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="mybeans.Taxation" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Now calling the bean for calculating tax</h3>
<hr>
<%
String nm;
double inc;
String gen;
nm=request.getParameter("usernm");
inc=Double.parseDouble(request.getParameter("income"));
gen=request.getParameter("gender");

Taxation t=new Taxation();
t.setYearlyincome(inc);
t.setGender(gen);
%>

<span style="color: green;font-size:18px">
Name : <%=nm %><br>
Annual Income : <%=inc %><br>
Gender : <%=gen %><br>
Income Tax : <%=t.getIncometax()%>
</span>
<br><br>
<a href="index.jsp">Home</a>
</body>
</html>