<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="mybeans.*" %>
    <%@page import="myentities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ArrayList<Account> lst=new ArrayList<Account>();
AccountTypeReport obj=new AccountTypeReport();

String typ=request.getParameter("typ");

obj.setAcctype(typ);
lst=obj.getList();
%>
<h2>Now showing account report from a bean</h2>
<hr>
<table width="500px" border="1" bordercolor="sliver" cellspacing="0">
<tr>
<th>Account Number
<th>Name
<th>Type
<th>Balance
</tr>

<%
for(int i=0;i<lst.size();i++)
{
 %>
<tr>
<td><%=lst.get(i).getId() %>
<td><%=lst.get(i).getAccnm() %>
<td><%=lst.get(i).getAcctype() %>
<td><%=lst.get(i).getBalance() %>
</tr>
<% 
}
%>
</table>
<br><br>
<a href="index.jsp">Home</a>
</body>
</html>