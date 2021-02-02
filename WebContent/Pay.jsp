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
double amt;
String mode;
amt=Double.parseDouble(request.getParameter("amt"));
mode=request.getParameter("opt");

if(mode.equals("netbanking"))
{
%>
<jsp:forward page="SBIOnline.jsp">
<jsp:param name="amount" value="<%=amt%>"/>
</jsp:forward>
<%
}
else
{
%>
<jsp:forward page="Visa.jsp">
<jsp:param name="amount" value="<%=amt%>"/>
</jsp:forward>
<%
}
%>
</body>
</html>