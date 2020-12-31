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
<title>Revenue Reports</title>
</head>
<body>
<p> <form action="revenueGeneratedbyFlight.jsp" method="post">

		<table style="display: table;  align: center">
			<tr> <td><h3>Find Revenue By Flight:</h3></td>
			<tr>
				<td>Enter Flight Number:</td>
				<td><input type="text" name="flightNoRev"></td>
			</tr>
			
			
			<tr>
				<td><input type="submit" name="ALsubmit" value="Search "></td>
			</tr>
		</table>
</form>
<p> <form action="revenueGeneratedbyCustomer.jsp" method="post">

		<table style="display: table;  align: center">
			<tr> <td><h3>Find Revenue By Customer:</h3></td>
			<tr>
				<td>Enter Customer Email:</td>
				<td><input type="text" name="customerEmailRev"></td>
			</tr>
			
			<tr>
				<td><input type="submit" name="ALsubmit" value="Search "></td>
			</tr>
		</table>
</form>
</body>
</html>