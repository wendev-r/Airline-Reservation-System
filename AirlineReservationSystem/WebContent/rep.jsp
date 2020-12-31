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
	
			String accountNo = request.getParameter("repAccountNo");
			String employeeID = request.getParameter("EmployeeID");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");
;
			Statement stmt = con.createStatement();
			
				
		ResultSet rs=stmt.executeQuery("select * from Employee where AccountNo='"+accountNo+"' and Employee_ID='"+employeeID+"'");
		rs.next();
		if(rs.getString("Employee_ID").equals(employeeID)&&rs.getString("AccountNo").equals(accountNo))
		{
		//out.println("Successful login ");
		String redirectUrl = "http://localhost:8080/AirlineReservationSystem/repHome.jsp";
		response.sendRedirect(redirectUrl);
		}
		else{
		out.println("Invalid password or username.");
		}
	}catch(Exception e){
		System.out.println(e);
	}
	%>	
</body>
</html>