<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->
<!--Unnit Patel ugp5-->
<!--Janki Patel jsp231-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><%	
	
			String email = request.getParameter("uEmailRep");
			String ticketid = request.getParameter("ticketIDRsveRep");
			String tcktClass = request.getParameter("classRep");
			String meal = request.getParameter("mealRep");
			String issueDate = request.getParameter("issueDateRep");
			String seatNo = request.getParameter("seatNoRep");
			String flightNo = "---"; 
			flightNo = request.getParameter("flightNoRsveRep");
			String whichWay = request.getParameter("whichWay");
			if(flightNo == null){
				flightNo="0";
			}
			float fare;
		
		try {
			
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");

			Statement stmt = con.createStatement();
			
			String findFareSQL ="select totalFair from Fare where FlightNumber="+flightNo;
			String findDepartAirportSQL = "select distinct Airports.Name from Airports, Departs_From where Airports.AirportId =Departs_From.AirportId and Departs_From.FlightNumber="+flightNo;
			String findArrivalAirportSQL ="select distinct Airports.Name from Airports, Arrives_At where Airports.AirportId=Arrives_At.AirportId and Arrives_At.FlightNumber="+flightNo;
			String departureTimeSQL ="select Departs_From.Time from Departs_From where Departs_From.FlightNumber="+flightNo;
			ResultSet rs = stmt.executeQuery(findFareSQL);
						%>
			<h3>Total fare is $<%while (rs.next()){ out.print(rs.getString(1));}%> for <% rs =stmt.executeQuery(findDepartAirportSQL);
 while(rs.next()){out.print(rs.getString(1));} %> to <% rs =stmt.executeQuery(findArrivalAirportSQL);
 while(rs.next()){out.print(rs.getString(1));} %>  at time <% rs =stmt.executeQuery(departureTimeSQL);
 while(rs.next()){out.print(rs.getString(1));} %></h3>
 			<h3>Reservation Complete</h3>
 			<table>
 			<tr>
 			<td>
 			<td><a href="repHome.jsp">Go back</a></td>
 			</tr>
 			</table>
			<% 
			
			//int j= stmt.executeUpdate("insert into users(Email)values('"+email+"')");
			int i=stmt.executeUpdate("insert into Tickets(Ticket_ID,Class,Meal,IssueDate,SeatNo,email,FlightNo)values('"+ticketid+"','"+tcktClass+"','"+meal+"','"+issueDate+"','"+seatNo+"','"+email+"','"+flightNo+"')");
			if (whichWay.equals("One Way")){
				stmt.executeUpdate("insert into OneWay(Ticket_ID)values('"+ticketid+"')");
			}else if (whichWay.equals("Round Trip")){
				stmt.executeUpdate("insert into RoundTrip(Ticket_ID)values('"+ticketid+"')");
			}
			
			
			
			
		
			
		
	}catch(Exception e){
		out.println("Have a Safe Flight");
		System.out.println(e);
	}
		
		%>
</body>
</html>