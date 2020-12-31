<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->
<!--Unnit Patel ugp5-->
<!--Janki Patel jsp231-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><%	
			
			String email = request.getParameter("userEmailRsrv");
			String ticketid = request.getParameter("userTicketIDRsrv");
			String tcktClass = request.getParameter("userClassRsrv");
			String meal = request.getParameter("userMealRsrv");
	
			String seatNo = request.getParameter("userSeatNoRsrv");
			String flightNo = "---"; 
			flightNo = request.getParameter("userFlightNoRsrv");
			char ch=' ';
			char ch2= ' ';
			for (int i =0; i<flightNo.length()-1; i++){
				ch= flightNo.charAt(14);
				ch2=flightNo.charAt(15);
			}
			 flightNo = String.valueOf(ch) +String.valueOf(ch2);
			
			
			String whichWay = request.getParameter("whichWayUser");
			if(flightNo == null){
				flightNo="0";
			}
			float fare;
		
		try {
			
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");

			Statement stmt = con.createStatement();
			Statement stmt2 = con.createStatement();
			Statement stmt3 = con.createStatement();
			Statement stmt4 = con.createStatement();
			Statement stmt5 = con.createStatement();



			
			String findFareSQL ="select totalFair from Fare where FlightNumber="+flightNo;
			String findDepartAirportSQL = "select distinct Airports.Name from Airports, Departs_From where Airports.AirportId =Departs_From.AirportId and Departs_From.FlightNumber="+flightNo;
			String findArrivalAirportSQL ="select distinct Airports.Name from Airports, Arrives_At where Airports.AirportId=Arrives_At.AirportId and Arrives_At.FlightNumber="+flightNo;
			String departureTimeSQL ="select Departs_From.Time from Departs_From where Departs_From.FlightNumber="+flightNo;
			String arrivalTimeSQL="select Arrives_At.Time from Arrives_At where Arrives_At.FlightNumber="+flightNo;
			ResultSet rs = stmt.executeQuery(findFareSQL);
						%>
			<h3>The fare for this flight is $<%while (rs.next()){ out.print(rs.getString(1));}%></h3>
 			<h3> <% 
 			ResultSet rs2 = stmt2.executeQuery(findDepartAirportSQL);
 			while(rs2.next()){
 				 %>Departure Airport: <% out.println(rs2.getString(1)); 
 			}
 			
 			
 					%> </h3>
 			<h3> <% 
 			ResultSet rs3 = stmt3.executeQuery(findArrivalAirportSQL);
 			while(rs3.next()){
 				 %>Arrival Airport: <% out.println(rs3.getString(1));
 			}
 			
 					%> </h3>
 			<h3> <% 
 			ResultSet rs4 = stmt4.executeQuery(departureTimeSQL);
 			while(rs4.next()){
 				 %>Departure Time: <% out.println(rs4.getString(1));
 			}
 			
 					%> </h3>	
 			<h3> <% 
 			ResultSet rs5 = stmt5.executeQuery(arrivalTimeSQL);
 			while(rs5.next()){
 				 %>Arrival Time: <% out.println(rs5.getString(1));
 			}
 			
 					%> </h3>					
 			<table>
 			<tr>
 			<td>
 			<td><a href="LookupFlightsUI.jsp">Go back</a></td>
 			</tr>
 
 			</table>
			<% 
			
		
					
			
		
			
		
	}catch(Exception e){
		out.println("Error");
		
		System.out.println(e);
	}
		
		%>
</body>
</html>