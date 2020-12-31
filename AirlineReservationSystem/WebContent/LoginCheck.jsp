<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->
<!--Unnit Patel ugp5-->
<!--Janki Patel jsp231-->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airline Reservation System</title>
</head>
<body>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");

if((username.equals("admin")&& password.equals("adminadmin")))
{
	response.sendRedirect("index1.jsp");
} else
{
	response.sendRedirect("error.jsp");
}
%>

</body>
</html>