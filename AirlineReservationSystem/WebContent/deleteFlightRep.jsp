<!--Dhruti Shah dis47-->
 <!--Wendell Rousse wmr28 -->

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
	
			String flightNo = request.getParameter("flightNoDelete");
			
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");
;
			Statement stmt = con.createStatement();
			PreparedStatement ps = null;
			
				
		
			int i=stmt.executeUpdate("DELETE FROM Flights WHERE FlightNumber="+flightNo);
			out.println("Data Deleted Successfully");
		
	}catch(Exception e){
		out.println("No such airline ID exists");
		System.out.println(e);
	}
		
		%>
</body>
</html>