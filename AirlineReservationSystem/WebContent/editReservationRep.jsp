 <!--Janki Patel jsp231-->
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
	
			String email = request.getParameter("editRsrvEmail");
			String meal = request.getParameter("editMealRsrvRep");
			String Class = request.getParameter("editClassRsrvRep");
			String SeatNum = request.getParameter("editRsrvSeat");
			String FlightNum = request.getParameter("editFlightNoRsrvRep");
			
		
		try {
			
			java.lang.Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");
			Statement stmt = con.createStatement();
			PreparedStatement ps = null;
			
				
			ResultSet rs=stmt.executeQuery("select * from Tickets where email='"+email+"'");
			rs.next();
			if(rs.getString("email").equals(email))
			{
			String sql ="Update Tickets set Meal='"+meal+"'Where email='"+email+"'";
			String sql2 ="Update Tickets set Class='"+Class+"'Where email='"+email+"'";
			String sql3 ="Update Tickets set SeatNo='"+SeatNum+"'Where email='"+email+"'";
			if(meal !=null){
			stmt.executeUpdate(sql);
			}
			if(Class != null){
			stmt.executeUpdate(sql2);
			}
			if(SeatNum != null){
			stmt.executeUpdate(sql3);
			}
			out.println("Data sucecessfully Edited");
			}
			
	}catch(Exception e){
		out.println("Error");
		System.out.println(e);
	}
		
		
		%>
</body>
</html>