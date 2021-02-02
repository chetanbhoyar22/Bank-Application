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
String uid=String.valueOf(session.getAttribute("userid"));
%>
<h2 Style="color:purple">Customer Home Page</h2>
Logged in as : <%=uid %>
<br>
Session ID : <%=session.getId() %> 
<hr>
<a href="ShowProfile.jsp">Show my profile</a> | 
<a href="AccountsReport.jsp">Accounts report</a> | 
<a href="ChangePassword.jsp">Change password</a> |
<a href="Logout.jsp">Logout</a>
</body>
</html>