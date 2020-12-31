<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airline Reservation System</title>
</head>
<body>
	<%	
	
			String airlineID = request.getParameter("airlineIDAdd");
			String name = request.getParameter("airlineNameAdd");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");

			Statement stmt = con.createStatement();
			PreparedStatement ps = null;
			
			int i=stmt.executeUpdate("insert into Airlines(Airline_ID,Name)values('"+airlineID+"','"+name+"')");
			out.println("Data is successfully inserted!");
		
	}catch(Exception e){
		
		System.out.println(e);
	}
		
		%>
</body>
</html>