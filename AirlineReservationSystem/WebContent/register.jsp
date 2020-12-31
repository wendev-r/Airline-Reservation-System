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
<title>Registration</title>
</head>
<body background="plane.jpg">
	<form action="newUser.jsp" method ="post">
		<table>
			<tr>
				<td><h3>Register</h3></td>
			</tr>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="FName"></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="LName"></td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td><input type="text" name="Pnum"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Register"></td>
				
			</tr>
		</table>
		</form>
</body>
</html>