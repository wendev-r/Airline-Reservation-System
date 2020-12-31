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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Forgot Password?</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="login.jsp">Airline Reservation System</a>
				<ul class="nav navbar-nav navbar-right">
					
				</ul>
			</div>
		</div>
	</nav>

	<form action="${pageContext.servletContext.contextPath}/forgotPassword" method="POST">
	
	<div class="form-group">
			<label for="fname">First Name:</label> 
			<input type="text" class="form-control" placeholder="Enter First Name" name="fname" required>
		</div>
		
		<div class="form-group">
			<label for="lname">Last Name:</label> 
			<input type="text" class="form-control" placeholder="Enter Last Name" name="lname" required>
		</div>
		<div class="form-group">
			<label for="email">Email:</label> 
			<input type="text" class="form-control" placeholder="Enter Email" name="email" required>
		
		
		<input type='submit' class="btn btn-primary" value="Find Password!"/>
		</div>
		</form>
		
	
</body>
</html>