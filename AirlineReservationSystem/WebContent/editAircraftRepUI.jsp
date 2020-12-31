<!--Dhruti Shah dis47-->
 <!--Wendell Rousse wmr28 -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>	
	<form action="editAircraftRep.jsp" method ="post">
		<table style="display: table;  align: center">
			<tr> <td><h3>Edit Aircraft Information</h3></td>
			<tr>
				<td>Search by Aircraft No.:</td>
				<td><input type="text" name="aircraftNoEdit"></td>
			</tr>
			<tr>
				<td>Edit Name:</td>
				<td><input type="text" name="aircraftNameEdit"></td>
			</tr>
			
			<tr>
				<td><input type="submit" name="ACsubmit" value="Edit"></td>
			</tr>
		</table>
	</form>
	<form action="addAircraftRep.jsp" method ="post">
		<table style="display: table; align: center">
			<tr> <td><h3>Add an Aircraft</h3></td>
			<tr>
				<td>Enter Aircraft No.:</td>
				<td><input type="text" name="aircraftNoAdd"></td>
			</tr>
			<tr>
				<td>Enter Name:</td>
				<td><input type="text" name="aircraftNameAdd"></td>
			</tr>
			
			<tr>
				<td><input type="submit" name="AC2submit" value="Add Airline "></td>
			</tr>
		</table>
	</form>
	<form action="deleteAircraftRep.jsp" method ="post">
		<table style="display: table;  align: center">
			<tr> <td><h3>Delete an Aircraft</h3></td>
			<tr>
				<td>Enter Aircraft No.:</td>
				<td><input type="text" name="aircraftNoDelete"></td>
			</tr>
			
			<tr>
				<td><input type="submit" name="ALsubmit" value="Delete Airline "></td>
			</tr>
		</table>
	</form>
</body>
</html>