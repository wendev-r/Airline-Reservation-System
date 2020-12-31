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
<title>Insert title here</title>
</head>
<body>
	<%	
	
			String flightNo = request.getParameter("flightNoAdd");
			String day = request.getParameter("daysAdd");
			String depart= request.getParameter("DepartAdd");
			String arrive= request.getParameter("ArrivalAdd");
			String id = request.getParameter("test");
			String id2 = request.getParameter("test2");
			String aTime = request.getParameter("ArrivalTime");
			String dTime = request.getParameter("DepartTime");

			char c1 = ' ';
			char c2 = ' ';
			char c3 = ' ';
			String tempID = " ";
			for(int i =0; i<id.length()-1; i++){
				c1 = id.charAt(4);
				c2 =id.charAt(5);
				c3 = id.charAt(6);
				
			}
			tempID = String.valueOf(c1) +String.valueOf(c2)+String.valueOf(c3);
			char c4 = ' ';
			char c5 = ' ';
			char c6 = ' ';
			String tempID2 = " ";
			for(int i =0; i<id.length()-1; i++){
				c4 = id.charAt(4);
				c5 =id.charAt(5);
				c6 = id.charAt(6);
				
			}
			tempID2 = String.valueOf(c1) +String.valueOf(c2)+String.valueOf(c3);
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");
;
			Statement stmt = con.createStatement();
			Statement stmt2 = con.createStatement();

			PreparedStatement ps = null;
			
			int i=stmt.executeUpdate("insert into Flights(FlightNumber,Days_of_week)values('"+flightNo+"','"+day+"')");
			stmt.executeUpdate("insert into Departs_From(FlightNumber,city,AirportId,Time)values('"+flightNo+"','"+depart+"','"+tempID2+"','"+dTime+"')");
			stmt.executeUpdate("insert into Arrives_At(FlightNumber,city,AirportId,Time)values('"+flightNo+"','"+arrive+"','"+tempID+"','"+aTime+"')");
			

			out.println("Data is successfully inserted!");
		
	}catch(Exception e){
		out.print(tempID);
		System.out.println(e);
	}
		
		%>
</body>
</html>