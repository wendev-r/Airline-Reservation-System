<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->
<!--Unnit Patel ugp5-->
<!--Janki Patel jsp231-->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update customer representive's information</title>
</head>
<body>	
	<form action="editCustomerRep.jsp" method ="post">
		<table style="display: table;  align: center">
			<tr> <td><h3>Edit Information</h3></td>
			<tr>
				<td>Search by Account No:</td>
				<td><input type="text" name="AccountNoEdit"></td>
			</tr>
			<tr>
				<td>Edit id:</td>
				<td><input type="text" name="CustomerRepEdit"></td>
			</tr>			
			<tr>
				<td><input type="submit" name="ACsubmit" value="Edit"></td>
			</tr>
		</table>
	</form>
	<form action="addCustomerRep.jsp" method ="post">
		<table style="display: table; align: center">
			<tr> <td><h3>Add information</h3></td>
			<tr>
				<td>Enter Account No:</td>
				<td><input type="text" name="customerRepAccountAdd"></td>
			</tr>
			<tr>
				<td>Enter Employee id:</td>
				<td><input type="text" name="customerRepIdAdd"></td>
			</tr>			
			<tr>
				<td><input type="submit" name="AC2submit" value="Add"></td>
			</tr>
		</table>
	</form>
	<form action="deleteCustomerRep.jsp" method ="post">
		<table style="display: table;  align: center">
			<tr> <td><h3>Delete information</h3></td>
			<tr>
				<td>Enter Account No:</td>
				<td><input type="text" name="customerRepAccountNoDelete"></td>
			</tr>			
			<tr>
				<td><input type="submit" name="ALsubmit" value="Delete "></td>
			</tr>
		</table>
	</form>
</body>
</html>