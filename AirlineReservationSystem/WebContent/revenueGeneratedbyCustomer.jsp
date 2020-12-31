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
		String email = request.getParameter("customerEmailRev");
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
				
				String findRevByEmailSQL= "select Fare.totalFair from Tickets, Fare where Tickets.flightNo=Fare.FlightNumber and Tickets.email='"+email+"'";
				ResultSet rs = stmt.executeQuery(findRevByEmailSQL);
				int getFare=0;
				while(rs.next()){
				temp = rs.getString(1);
				getFare += Integer.parseInt(temp);
				}
				
			
				
				out.print(getFare);

		} catch (Exception e) {

			System.out.println(e);
		}
	%>

</body>
</html>