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
<title> Update Customer Information</title>

</head>
<body>	
	<form action="editCustomer.jsp" method ="post">
		<table style="display: table;  align: center">
			<tr> <td><h3>Edit Customer Information</h3></td>
			<tr>
				<td>Search by customer's email:</td>
				<td><input type="text" name="customerEmail"></td>
			</tr>
			<tr>
				<td>Edit First Name:</td>
				<td><input type="text" name="customerFName"></td>
			</tr>
			    <td>Edit Last Name:</td>
				<td><input type="text" name="customerLName"></td>
			</tr> 
			    <td>Edit Phone No:</td>
				<td><input type="text" name="customerPhone"></td>
			</tr>
			   <td>Edit Password:</td>
				<td><input type="text" name="customerPassword"></td>
			</tr>  			
			<tr>
				<td><input type="submit" name="ACsubmit" value="Edit"></td>
			</tr>
		</table>
	</form>
	<form action="addCustomer.jsp" method ="post">
		<table style="display: table; align: center">
			<tr> <td><h3>Add Customer Information</h3></td>
			   <tr>
				<td>Enter customer's email:</td>
				<td><input type="text" name="customerEmailAdd"></td>
			</tr>
			<tr>
				<td>Enter First Name:</td>
				<td><input type="text" name="customerFNameAdd"></td>
			</tr>
			    <td>Enter Last Name:</td>
				<td><input type="text" name="customerLNameAdd"></td>
			</tr> 
			    <td>Enter Phone No:</td>
				<td><input type="text" name="customerPhoneNumberAdd"></td>
			</tr>
			   <td>Enter Password:</td>
				<td><input type="text" name="customerPasswordAdd"></td>
			</tr>  			
			<tr>
				<td><input type="submit" name="AC2submit" value="Add data"></td>
			</tr>
		</table>
	</form>
	<form action="deleteCustomer.jsp" method ="post">
		<table style="display: table;  align: center">
			<tr> <td><h3>Delete customer's information</h3></td>
			<tr>
				<td>Enter customer's email:</td>
				<td><input type="text" name="customerEmailDelete"></td>
			</tr>			
			<tr>
				<td><input type="submit" name="ALsubmit" value="Delete data"></td>
			</tr>
		</table>
	</form>
</body>
</html>