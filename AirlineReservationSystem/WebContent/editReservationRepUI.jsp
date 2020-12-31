<!--Janki Patel jsp231-->
 <!--Wendell Rousse wmr28 -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airline Reservation System</title>

</head>
<body>
	
	<form action="editReservationRep.jsp" method = "post">
		<table style="display: table; margin: auto;">
			<tr>
				<td>Enter User Email to Edit:</td>
			
				<td><input type="text" name="editRsrvEmail"></td>
			</tr>
			<tr>
				<td>Edit the following information:</td>
			</tr>
			<tr>
				<td>Class:</td>
			
				<td><input type="text" name="editClassRsrvRep"></td>
			</tr>
			<tr>
				<td>Meal:</td>
			
				<td><input type="text" name="editMealRsrvRep"></td>
			</tr>
			<tr>
				<td>Seat Number:</td>
			
				<td><input type="text" name="editRsrvSeat"></td>
			</tr>
			
			<tr>
				<td><input type="submit" name="submit" value="Submit"></td>
				
			</tr>
		</table>
	</form>
</body>
</html>