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
	
			String AccountNo = request.getParameter("AccountNoEdit");
			String EmployeeId = request.getParameter("CustomerRepEdit");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");

			Statement stmt = con.createStatement();
			PreparedStatement ps = null;
			
				
	ResultSet rs=stmt.executeQuery("select * from Employee where AccountNo='"+AccountNo+"'");
		rs.next();
		if(rs.getString("AccountNo").equals(AccountNo))
		{
		String sql ="Update Employee set Employee_ID='"+EmployeeId+"' where AccountNo='"+AccountNo+"'";
		stmt.executeUpdate(sql);
		out.println("Data sucecessfully Edited");
		}
		
	}catch(Exception e){
		out.println("No such Employee ID exists");
		System.out.println(e);
	}
		
		%>
</body>
</html>