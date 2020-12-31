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
		String flightNumber = request.getParameter("flightNoRepWL");
	%>
	<table border="1">
		<tr>
			<td><h3>
					Passengers for Flight Number
					<%
				out.print(flightNumber);
			%>
					:
				</h3>
		</tr>
		<tr>
			<td>Email:</td>

		</tr>


		<%
			try {

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem",
						"Group55", "Jsk1234.");

				Statement stmt = con.createStatement();
				PreparedStatement ps = null;

				String sql = "SELECT distinct waitlist.email from customers , Tickets , waitlist , Flights  where customers.Email =Tickets.email and Tickets.FlightNo = Flights.FlightNumber and Flights.FlightNumber=waitlist.FlightNumber and waitlist.FlightNumber="
						+ flightNumber;

				ResultSet rs = stmt.executeQuery(sql);

				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("waitlist.Email")%></td>
		</tr>

		<%
			}
		%>
	</table>
	<%
		} catch (Exception e) {

			System.out.println(e);
		}
	%>

</body>
</html>