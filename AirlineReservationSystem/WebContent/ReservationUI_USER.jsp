<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->
<!--Unnit Patel ugp5-->
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
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem",
					"Group55", "Jsk1234.");
			Statement stmt = con.createStatement();
			Statement stmt2 = con.createStatement();
			Statement stmt3 = con.createStatement();
			ResultSet rs = stmt.executeQuery("select FlightNumber from Flights");
			//ResultSet rs2 = stmt.executeQuery("select Departs_From.city from Departs_From, Flights where Flights.FlightNumber = Departs_From.FlightNumber and Departs_From.FlightNumber='"+rs.getString(1)+"'" );
	%>
	<h1>Make a reservation</h1>
	<form action="ReservationUSER.jsp" method="post">
		<table style="display: table; margin: auto;">
			<tr>
				<td>Enter Your Email:</td>
				<td><input type="text" name="userEmailRsrv"></td>
			</tr>
			<tr>
				<td>Ticket ID:</td>
				<td><input type="text" name="userTicketIDRsrv"></td>
			</tr>
			<tr>
				<td>Class:</td>
				<td><input type="text" name="userClassRsrv"></td>
			</tr>
			<tr>
				<td>Meal:</td>
				<td><input type="text" name="userMealRsrv"></td>
			</tr>

			<tr>
				<td>Seat Number:</td>
				<td><input type="text" name="userSeatNoRsrv"></td>
			</tr>
			<tr>
				<td>Choose Flight Number:</td>
				<td><select name="userFlightNoRsrv">

						<%
							while (rs.next()) {
								String temp =rs.getString(1);
						%>
						<option>Flight Number:<%=rs.getString(1)%>, 
						
						<% ResultSet rs2 = stmt2.executeQuery("select Departs_From.city from Departs_From, Flights where Flights.FlightNumber = Departs_From.FlightNumber and Departs_From.FlightNumber="+temp);
							while(rs2.next()){	
								String temp2 = rs2.getString(1);
								 %>
								 Depart From: <%out.print(temp2);%> 
								 <% }
							
							ResultSet rs3 = stmt3.executeQuery("select DISTINCT Arrives_At.city From Arrives_At, Flights Where Arrives_At.FlightNumber = Arrives_At.FlightNumber and Arrives_At.FlightNumber ="+temp);
							while(rs3.next()){
							%> Arrives At: <%out.print(rs3.getString(1));%> <% 
							}
							}
								 %>
						</option>
						<option>---</option>
				</select></td>
			</tr>
			<tr>
				<td>One Way or Round Way:</td>
				<td><select name="whichWayUser">

						
						<option>One Way</option>
						<option>Round Trip</option>
						
						
				</select></td>
			</tr>
			
			<tr>
				<td><input type="submit" name="Rsrvsubmit" value="Reserve"></td>
				

			</tr>
		</table>
	</form>

	<%
		} catch (Exception e) {
			System.out.println(e);
		}
	%>
</body>
</html>