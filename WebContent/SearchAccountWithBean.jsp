
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="mybeans.AccountInfoGenerator"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4 style="color:green">Search result from bean </h4>
<%
int no=Integer.parseInt(request.getParameter("id"));
AccountInfoGenerator aig=new AccountInfoGenerator();
aig.setAcnumber(no);
//no processing and JDBC on a JSP page....thanks to the bean
String nm=aig.getAcname();
double bal=aig.getBalance();

%>
Name    : <%=nm%><br>
Balance : <%=bal%>
<br>
<br>
<a href="index.jsp">Home</a>

</body>
</html>

