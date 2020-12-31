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
		String flightNo = request.getParameter("flightNoRev");
	%>
	

		<%
			try {

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem",
						"Group55", "Jsk1234.");

				Statement stmt = con.createStatement();
				Statement stmt2 = con.createStatement();

				PreparedStatement ps = null;
				String temp= " ";
				String temp2= " ";
				String findRevByFlightSQL= "select count(Tickets.FlightNo) from Tickets where FlightNo =";
				ResultSet rs = stmt.executeQuery(findRevByFlightSQL+flightNo);
				while(rs.next()){
				temp = rs.getString(1);
				}
				String findFarebyFlightSQL="select totalFair from Fare where FlightNumber=";
				ResultSet rs2=stmt2.executeQuery(findFarebyFlightSQL+flightNo);
				while(rs2.next()){
				temp2 = rs2.getString(1);
				}
				int getCount = Integer.parseInt(temp);
				int getFair = Integer.parseInt(temp2);
				
				out.print(getCount*getFair);

		} catch (Exception e) {

			System.out.println(e);
		}
	%>

</body>
</html>