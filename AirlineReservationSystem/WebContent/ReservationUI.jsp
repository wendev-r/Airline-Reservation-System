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
<title>Airline Reservation System</title>
</head>
<body>
	<%
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem",
					"Group55", "Jsk1234.");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select FlightNumber from Flights");
	%>
	<h1>Make a reservation</h1>
	<form action="Reservation.jsp" method="post">
		<table style="display: table; margin: auto;">
			<tr>
				<td>Enter Existing User Email:</td>
				<td><input type="text" name="uEmailRep"></td>
			</tr>
			<tr>
				<td>Ticket ID:</td>
				<td><input type="text" name="ticketIDRsveRep"></td>
			</tr>
			<tr>
				<td>Class:</td>
				<td><input type="text" name="classRep"></td>
			</tr>
			<tr>
				<td>Meal:</td>
				<td><input type="text" name="mealRep"></td>
			</tr>
			<tr>
				<td>Issue Date:</td>
				<td><input type="date" placeholder="YYYY-MM-DD"
					name="issueDateRep"></td>
			</tr>
			<tr>
				<td>Seat Number:</td>
				<td><input type="text" name="seatNoRep"></td>
			</tr>
			<tr>
				<td>Choose Flight Number:</td>
				<td><select name="flightNoRsveRep">

						<%
							while (rs.next()) {
						%>
						<option><%=rs.getString(1)%></option>
						<%
							}
						%>
						<option>---</option>
				</select></td>
			</tr>
			<tr>
				<td>One Way or Round Way:</td>
				<td><select name="whichWay">

						
						<option>One Way</option>
						<option>Round Trip</option>
						
						
				</select></td>
			</tr>
			
			<tr>
				<td><input type="submit" name="Rsrvsubmit" value="Reserve"></td>
				<td><a href="signup.jsp">Register a new user</a></td>

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