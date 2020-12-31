<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->
<!--Unnit Patel ugp5-->
<!--Janki Patel jsp231-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
		ul {
  			list-style-type: none;
  			margin: 0;
  			padding: 0;
  			overflow: hidden;
  			background-color: #107;
			}

		li {
  			float: left;
		   }

		li a {
  			display: block;
  			color: red;
  			text-align: center;
  			padding: 14px 16px;
  			text-decoration: none;
			 }

		li a:hover {
  			background-color: #333
			}
		</style>
		</head>
		<body>

        <ul>
        <li><a href= "AboutPage.jsp" class = "cancelbtn">About</a>
        <li><a href= "replogin.jsp" class = cancelbtn">Customer Rep</a>
        <li><a href= "index2.jsp" class = cancelbtn">Admin</a>
        <li><a href= "logout.jsp" class = "cancelbtn">Logout</a>
        
        </ul>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Airline Reservation System</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
    body {font-family: times, serif; font-size:14pt; font-style:italic;}

    input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 20px 0;
    display: inline-block;
    background: #C0C0C0;
    }

    .container {
    width: 25%;
    align-content: center;
    padding: 16px;
    }

    span.psw {
    float: right;
    padding-top: 16px;
    }
</style>
</head>

<body background="plane.jpg">
    <div class="jumbotron text center">
        <marquee width="70%" direction="right" height="100px">
		<h1>Welcome to Group 55 Flight Reservation System!</h1>
       </marquee>
    </div>
    <form method="post" action="connectionCheck.jsp">

        <div class="container">
            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" required>


            <label for="psw"><b>Password (8 Characters minimum)</b></label>
            <input type="password" placeholder="Enter Password" name="psw" minlength="8" required>

            <button type="submit">Sign In </button>
        </div>

        <div class="container" style="background-color:#C0C0C0">
            <p>Don't have an account?</p>
            <a href= "signup.jsp" class = "cancelbtn">Register</a>
        </div>           
    </form>


</body>