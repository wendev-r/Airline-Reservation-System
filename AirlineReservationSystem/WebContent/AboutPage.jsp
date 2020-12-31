<!--Dhruti Shah dis47-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<meta charset="UTF-8">
<style> 
body {
  background-image: url("airline.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: fixed;
  background-top:0;
  background-left:0;
  background-min-width: 100%;
  background-min-height: 100%;
  }
  
h1 {
  color: #922B21 ;
  font-family: cursive;
  font-size: 200%;
  text-align: left;
}
hr { 
border-color: grey;
}
p{
color: #922B21;
text-indent: 50px;
font-size: 120%;
font-family: cursive;
}
form {
text-align: center;
}
input {
background-color: transparent;
font-family: cursive;
}


</style>
<title>About Page</title>
</head>
<body>
	
	<h1> About Airline Reservation System </h1>
	<hr>
	<p> Welcome to Airline Reservation System. This Site is created by four members of Group 55 named: Dhruti shah, Wendell Rouse, Unnit Patel, Janki Patel.
	    This Web site is essentially a adaptation of Online Airline Booking System and it was done as a project to represent in the CS336 class at Rutgers University.
	</p>
	<p>	Any credit card information is not stored or used for any other cause. Airline Reservation System is just used as a representation for a customer to book a ticket.
	    We hope you find the site easy to navigate. 
	</p>
	<p>	Please feel free to email:- dis47@scarletmail.rutgers.edu if you have any questions or concerns.   
	            Airline Reservation System wishes you a Happy and Safe Travels!
	</p>
	 <form method = "post" action = "customerHomepage.jsp"> <input type = "submit" value = "Continue Homepage."></form>
	
</body>
</html>