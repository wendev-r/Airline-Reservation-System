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
	<form action="editAirlineRep.jsp" method ="post">
		<table style="display: table;  align: center">
			<tr> <td><h3>Edit Airline Information</h3></td>
			<tr>
				<td>Search by airline ID:</td>
				<td><input type="text" name="airlineIDEdit"></td>
			</tr>
			<tr>
				<td>Edit Name:</td>
				<td><input type="text" name="airlineNameEdit"></td>
			</tr>
			
			<tr>
				<td><input type="submit" name="ALsubmit" value="Edit "></td>
			</tr>
		</table>
	</form>
	<form action="addAirlineRep.jsp" method ="post">
		<table style="display: table; align: center">
			<tr> <td><h3>Add an Airline</h3></td>
			<tr>
				<td>Enter airline ID:</td>
				<td><input type="text" name="airlineIDAdd"></td>
			</tr>
			<tr>
				<td>Enter Name:</td>
				<td><input type="text" name="airlineNameAdd"></td>
			</tr>
			
			<tr>
				<td><input type="submit" name="ALsubmit" value="Add Airline "></td>
			</tr>
		</table>
	</form>
	<form action="deleteAirlineRep.jsp" method ="post">
		<table style="display: table;  align: center">
			<tr> <td><h3>Delete an Airline</h3></td>
			<tr>
				<td>Enter airline ID:</td>
				<td><input type="text" name="airlineIDDelete"></td>
			</tr>
			
			<tr>
				<td><input type="submit" name="ALsubmit" value="Delete Airline "></td>
			</tr>
		</table>
	</form>
</body>
</html>