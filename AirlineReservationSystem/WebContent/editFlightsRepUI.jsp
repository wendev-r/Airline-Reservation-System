<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->
<!--Unnit Patel ugp5-->
<!--Janki Patel jsp231-->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
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
			ResultSet rs = stmt.executeQuery("select AirportID from Airports");
			Statement stmt4 = con.createStatement();
			ResultSet rs3 = stmt3.executeQuery("select AirportID from Airports");
		
	%>
	<form action="editFlightRep.jsp" method="post">
		<table style="display: table; align: center">
			<tr>
				<td><h3>Edit Flight Information</h3></td>
			<tr>
				<td>Search by Flight No.:</td>
				<td><input type="text" name="flightNoEdit"></td>
			</tr>
			<tr>
				<td>Change Days of the Week:</td>
				<td><input type="text" name="daysEdit"></td>
			</tr>

			<tr>
				<td><input type="submit" name="Fsubmit" value="Edit"></td>
			</tr>
		</table>
	</form>
	<form action="addFlightRep.jsp" method="post">
		<table style="display: table; align: center">
			<tr>
				<td><h3>Add a Flight</h3></td>
			<tr>
				<td>Enter Flight No.:</td>
				<td><input type="text" name="flightNoAdd"></td>
			</tr>
			<tr>
				<td>Enter Day of the Week:</td>
				<td><input type="text" name="daysAdd"></td>
			</tr>
				<tr>
				<td>Enter Departure:</td>
				<td><input type="text" name="DepartAdd"></td>
			</tr>
				<tr>
				<td>Enter Arrival:</td>
				<td><input type="text" name="ArrivalAdd"></td>
			</tr>
			
				<tr>
				<td>Choose Arrival Airport:</td>
				<td><select name="test">

						<%
							while (rs.next()) {
								String temp =rs.getString(1);
						%>
						<option>ID: <%=rs.getString(1)%> 
						
						<%
						ResultSet rs2= stmt2.executeQuery("select Name from Airports where AirportID='"+rs.getString(1)+"'");	
						while(rs2.next()){	
								String temp2 = rs2.getString(1);
								%>
								 Airport: <%out.print(temp2);%> 
								 <% }
							
							%> <% 
							}
							
								 %>
						</option>
						</select>
			<tr>
			<tr>
				<td>Choose Departure Airport:</td>
				<td><select name="test2">

						<%
							while (rs3.next()) {
								String temp =rs3.getString(1);
						%>
						<option>ID: <%=rs3.getString(1)%> 
						
						<%
						ResultSet rs5= stmt4.executeQuery("select Name from Airports where AirportID='"+rs3.getString(1)+"'");	
						while(rs5.next()){	
								String temp2 = rs5.getString(1);
								%>
								 Airport: <%out.print(temp2);%> 
								 <% }
							
							%> <% 
							}
							
								 %>
						</option>
						</select>
						
				<tr>
				<td>Enter Departure Time:</td>
				<td><input type="text" name="DepartTime" placeholder ="xx:xx:xx"></td>
			</tr>
				<tr>
				<td>Enter Arrival Time:</td>
				<td><input type="text" name="ArrivalTime" placeholder="xx:xx:xx"></td>
			</tr>
			<tr>
			
				<td><input type="submit" name="Fsubmit2" value="Add Flight"></td>
			</tr>
		</table>
	</form>
	<form action="deleteFlightRep.jsp" method="post">
		<table style="display: table; align: center">
			<tr>
				<td><h3>Delete a Flight</h3></td>
			<tr>
				<td>Enter Flight No.:</td>
				<td><input type="text" name="flightNoDelete"></td>
			</tr>

			<tr>
				<td><input type="submit" name="Fsubmit3" value="Delete Flight"></td>
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