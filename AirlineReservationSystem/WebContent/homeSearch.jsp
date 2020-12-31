<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->
<!--Unnit Patel ugp5-->
<!--Janki Patel jsp231-->

<%@ page import="java.sql.*"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Airline Reservation Site</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	font-family: times, serif;
	font-size: 14pt;
	font-style: italic;
	font-color: blue;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 20px 0;
	display: inline-block;
	background: #C0C0C0;
}

.container {
	width: 65%;
	align-content: center;
	padding: 16px;
	background-color: #C0C0C0;
}

span.psw {
	float: left;
	padding-top: 16px;
}
</style>
</head>

<body background = "plane.jpg">
	<div class="jumbotron text center">
		<marquee width="90%" direction="right" height="100px">
			<h1>Welcome to Group 55 Flight Reservation System!</h1>
		</marquee>
		<a href="logout.jsp" class="logoutbtn">Log Out</a>
	</div>
</head>




<form class="container" action="searchFlight.jsp"
	style="border: 1px solid #ccc">
	<div>
		<h1>Search for flights!</h1>
		<select name="deptAirport" class="form-control"
			style="width: 80%; margin-bottom: 15px;">
			<option value="-1">Select Departure Airport</option>
			<%
				try {
					String Query = "SELECT * FROM Airports;";
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection(
							"jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem",
							"Group55", "Jsk1234.");
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(Query);
					while (rs.next()) {
			%>
			<option value="<%=rs.getString("AirportId")%>"><%=rs.getString("Name")%><%=rs.getString("Country")%></option>
			<%
				}
				} catch (Exception ex) {
					ex.printStackTrace();
					out.println("Error: " + ex.getMessage());
				}
			%>
		</select> <select name="arrAirport" class="form-control"
			style="width: 70%; margin-bottom: 15px;">
			<option value="-1">Select Arrival Airport</option>
			<%
				try {
					String Query = "SELECT * FROM Airports;";
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection(
							"jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem",
							"Group55", "Jsk1234.");
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(Query);
					while (rs.next()) {
						//Airport_ID is a string of 3 characters, for example, EWR or JFK
			%>
			<option value="<%=rs.getString("AirportId")%>"><%=rs.getString("Name")%><%=rs.getString("Country")%></option>
			<%
				}
				} catch (Exception ex) {
					ex.printStackTrace();
					out.println("Error: " + ex.getMessage());
				}
			%>
		</select>

		<!-- Now select the departure date -->
		<label for="departureDate">Select a departure date:</label> <input
			type="date" id="departureDate" placeholder="MM/DD/YYYY"
			name="departureDate"><br>

		<script>
			function ShowHideDiv() {
				var chkYes = document.getElementById("chkYes");
				var dvtext = document.getElementById("dvtext");
				dvtext.style.display = chkYes.checked ? "block" : "none";
			}
		</script>

		<input type="radio" name="flightType" value="oneWay" id="chkNo"
			onclick="ShowHideDiv()"> One Way<br> <input type="radio"
			name="flightType" value="roundTrip" id="chkYes"
			onclick="ShowHideDiv()"> Round Trip<br>
		<br>

		<div id="dvtext" style="display: none;">
			<label for="returnDate">Select a return date:</label> <input
				type="date" id="returnDate" placeholder="MM/DD/YYYY"
				name="returnDate"><br>
		</div>
		<h3>Price Options</h3>
		<label for="price"><b>Select a price range.</b></label><br> <input
			type="radio" name="price" value="under200"> Under $300<br>
		<input type="radio" name="price" value="200-499"> $300 to $599<br>
		<input type="radio" name="price" value="500-799"> $600 to $899<br>
		<input type="radio" name="price" value="above800"> Above $900<br>
		<br>
		<!-- 
            <label for="stops"><b>How many stops would you prefer?</b></label><br>
            <input type="radio" name="stops" value="0"> 0<br>
            <input type="radio" name="stops" value="1"> 1<br>
            <input type="radio" name="stops" value="2"> 2<br>
            <br> -->
		<label style="margin-right: 165px"><b>Select an Airline:</b></label><br>
		<select name="airline" class="form-control" style="width: 250px">
			<option value="-1">Select Airline</option>
			<%
				try {
					String Query = "SELECT * FROM Airlines;";
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection(
							"jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem",
							"Group55", "Jsk1234.");
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(Query);
					while (rs.next()) {
			%>
			<option value="<%=rs.getInt("Airline_ID")%>"><%=rs.getString("Name")%></option>
			<%
				}
				} catch (Exception ex) {
					ex.printStackTrace();
					out.println("Error: " + ex.getMessage());
				}
			%>
		</select><br>

		<h3>Sorting Options</h3>
		<label for="sort"><b>Select a category to sort flights by:</b></label><br>
		<input type="radio" name="sort" value="priceH2L"> Price
		(Highest to Lowest)<br> <input type="radio" name="sort"
			value="priceL2H"> Price (Lowest to Highest)<br> <input
			type="radio" name="sort" value="departTime"> Departure Time<br>
		<input type="radio" name="sort" value="arriveTime"> Arrival
		Time<br> <br>

		<button type="submit">Search</button>
	</div>
</form>

</body>