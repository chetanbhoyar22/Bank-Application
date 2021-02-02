<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:element name="h2">
<jsp:body>Testing JSP tag library</jsp:body>
</jsp:element>



<jsp:element name="marquee">
<jsp:attribute name="bgcolor">azure</jsp:attribute>
<jsp:body>MahaDBT Portal Will be closed 12th August 2020</jsp:body>
</jsp:element>

<jsp:element name="hr"/>


<jsp:declaration>
int a,b,c;
</jsp:declaration>

<jsp:scriptlet>
a=9;
b=13;
c=a+b;
</jsp:scriptlet>

<jsp:text>
Sum of numbers is : 
</jsp:text>

<jsp:expression>
c
</jsp:expression>


<jsp:element name="br"/>
<jsp:element name="br"/>

<jsp:element name="a">
<jsp:attribute name="href">index.jsp</jsp:attribute>
<jsp:body>Home</jsp:body>
</jsp:element>

</body>
</html>