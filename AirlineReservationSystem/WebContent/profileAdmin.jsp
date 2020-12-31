<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->
<!--Unnit Patel ugp5-->
<!--Janki Patel jsp231-->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Profile Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>

<style>
form {
	text-align: center;
	
}

label {
	margin-right: 20px;
}
div span{
    position:absolute;
    right:10;
}
</style>
</head>

<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="login.jsp">Airline Reservation System</a>
				<ul class="nav navbar-nav navbar-right">
					<li>
						 <a href= "profileAdmin.jsp" class = "cancelbtn">Adminstrative Account</a>
					</li>
					<li><a href= "logout.jsp" class = "canclebtn">LogOut</a>	
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
<div class="list-group" style="width: 65%;">

	<form action="${pageContext.servletContext.contextPath}/profileAdmin" method ="POST">
		<h2>Admin Profile Page</h2>
		
		<div class="container">
		
			<label for="adminId"> Admin ID:</label>
			<input type="text" placeholder="Enter Admin ID" name="adminId">
			
			<br>
			<label for="fName">First Name:</label>
		 	 <input type="text" placeholder="Enter First Name " name ="fName">
		  	
			<br>
			<label for="lName">Last Name:</label> 
			<input type="text" placeholder="Enter Last Name" name="lName">
		
		  	<br>
		  	<label for="psw">Password:</label>
		  	<input type="password" placeholder="password" name ="password">
		  	
		  	<br>
		  	<input type="submit" class="btn btn-success" value="Submit"/>
			
		</div>
	</form>	
</div>
  
	<%
    if ((session.getAttribute("user") == null)) {
%>
   You have not logged in.<br/>
<a href="login.jsp">Please Login</a>
<%}
%>


</body>
</html>
</body>
</html>