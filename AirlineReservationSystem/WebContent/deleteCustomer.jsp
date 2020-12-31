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
	
			String email = request.getParameter("customerEmailDelete");
			
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");

			Statement stmt = con.createStatement();
			PreparedStatement ps = null;
			
				
			stmt.executeUpdate("DELETE FROM customers WHERE Email='"+email+"'");
			stmt.executeUpdate("DELETE FROM admmin WHERE Email='"+email+"'");
			
			out.println("Data Deleted Successfully");
		
	}catch(Exception e){
		out.println("No such aircraft ID exists");
		System.out.println(e);
	}
		
		%>
</body>
</html>