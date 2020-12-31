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
	
	String Email = request.getParameter("customerEmail");
	String Fname = request.getParameter("customerFName");
	String Lname = request.getParameter("customerLName");
	String PhoneNumber = request.getParameter("customerPhone");
	String Password = request.getParameter("customerPassword");
		
		
			
				
			try {
				
				java.lang.Class.forName("com.mysql.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");
				Statement stmt = con.createStatement();
				PreparedStatement ps = null;
				
					
				ResultSet rs=stmt.executeQuery("select * from customers where Email= '"+Email+"'");
				rs.next();
				if(rs.getString("Email").equals(Email))
				{
				String sql ="Update customers set PhoneNumber='"+PhoneNumber+"'Where Email='"+Email+"'";
				String sql2 ="Update customers set FName='"+Fname+"'Where Email='"+Email+"'";
				String sql3 ="Update customers set LName='"+Lname+"'Where Email='"+Email+"'";
				String sql4 ="Update admmin set Password='"+Password+"'Where Email='"+Email+"'";
				if(PhoneNumber !=null){
				stmt.executeUpdate(sql);
				}
				if(Fname != null){
				stmt.executeUpdate(sql2);
				}
				if(Lname != null){
				stmt.executeUpdate(sql3);
				}
				if(Password != null){
					stmt.executeUpdate(sql4);
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