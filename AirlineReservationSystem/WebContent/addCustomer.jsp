<!--Dhruti Shah dis47-->
<!--Janki Patel jsp231-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%	
	
			String Email = request.getParameter("customerEmailAdd");
			String Fname = request.getParameter("customerFNameAdd");
			String Lname = request.getParameter("customerLNameAdd");
			String PhoneNumber = request.getParameter("customerPhoneNumberAdd");
			String Password = request.getParameter("customerPasswordAdd");		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");
			Statement stmt = con.createStatement();
			PreparedStatement ps = null;
			
			stmt.executeUpdate("INSERT INTO admmin(Email,Password)" + " VALUES ('" + Email + "','" + Password + "');");
		     stmt.executeUpdate("INSERT INTO customers(Email,FName,LName,PhoneNumber)" + " VALUES ('" + Email + "','" +Fname+ "','" + Lname + "','" + PhoneNumber + "');");

			out.println("Data is successfully inserted!");
		
	}catch(Exception e){
		
		System.out.println(e);
	}
		
		%>
</body>
</html>