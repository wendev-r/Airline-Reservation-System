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
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Travel Reservation Site</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {font-family: times, serif; font-size:14pt; font-style:italic;}

        input[type=text], input[type=password] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22x 0;
        display: inline-block;
        border: none;
        background: #FFFACD;
        }

        input[type=text]:focus, input[type=password]:focus {
        background-color: #FFFACD;
        outline: none;
        }

        hr {
        border: 1px solid #FFFACD;
        margin-bottom: 25px;
        }
        .container {
            padding: 16px;
        }
    </style>
</head>

<body background="customer.jpg">
    <div class="jumbotron text center">
    <marquee width="70%" direction="up" height="100px">
			<h1>Welcome to Group 55 Flight Reservation System!</h1>
       </marquee>
    </div>
    <form action="newUser.jsp" style="border:1px solid #FFFACD">
        <div class="container">
            <h1>Sign Up</h1>
            <p>Please fill out the form to make an account.</p>
            <hr>
            <div class ="row">
			                			<label for="email"><b>Email</b></label>
			                			<input type="text" placeholder="Enter Email" name="email" required>
			            				</div>
			           				 <div class ="row">
			                				<label for="psw"><b>Password</b></label>
			                			<input type="password" placeholder="Enter Password" name="pswd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
			            			    </div>
			           			    <div class="row">
						                <div class="md-col-6">
						                    	<label for="fname"><b>First Name</b></label>
						                <input type="text" placeholder="Enter First Name" name="fname"  required>
						                </div>
						             <div class="md-col-6">
						                    <label for="lname"><b>Last Name</b></label>
						                    <input type="text" placeholder="Enter Last Name" name="lname" required>
						                </div>
						            </div>
						            <div class ="row">
						                <label for="phone-num"><b>Phone Number</b></label>
						                <input type="text" placeholder="Enter Phone Number" name="pnum" required>
						            </div>
						            <div class="clearfix"></br></br>
						                <button type="button" class="cancelbtn" ><a href="index.jsp">Cancel</a></button>
						                <button type="submit" class="signupbtn">Sign Up</button>
						            </div>
						        </div>
						    </form>
</body>