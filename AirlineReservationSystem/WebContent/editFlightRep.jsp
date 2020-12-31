 <!--Unnit Patel ugp5-->
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
	
			String flightNo = request.getParameter("flightNoEdit");
			String days = request.getParameter("daysEdit");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");

			Statement stmt = con.createStatement();
			PreparedStatement ps = null;
			
				
		ResultSet rs=stmt.executeQuery("select * from Flights where FlightNumber='"+flightNo+"'");
		rs.next();
		if(rs.getString("FlightNumber").equals(flightNo))
		{
		String sql ="Update Flights set Days_of_week ='"+days+"' Where FlightNumber="+flightNo;
		stmt.executeUpdate(sql);
		out.println("Data sucecessfully Edited");
		}
		else{
		out.println("No such flight exists");
		}
	}catch(Exception e){
		out.println("No such flight exists");
		System.out.println(e);
	}
		
		%>
</body>
</html>