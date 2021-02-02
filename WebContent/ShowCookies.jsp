<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Retrieving Cookies</h2>
<%
String ad="Movies";
Cookie c[]=request.getCookies();
if (c!=null)
{
for (int i=0;i<c.length;i++)
{
	out.println("<br> Name: "+c[i].getName()+"          |         ");
	out.println("Value: "+c[i].getValue());
	        if(c[i].getName().equals("Interest"))
	        ad=c[i].getValue();
}
}
else{
	out.println("No cookies found");
}
%>
<br><br>
<img src="ads/<%=ad%>.jpg" height="200px">
</body>
</html>