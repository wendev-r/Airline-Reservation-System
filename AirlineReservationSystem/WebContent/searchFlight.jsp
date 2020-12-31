<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->
<!--Unnit Patel ugp5-->
<!--Janki Patel jsp231-->

<%@ page import="java.sql.*"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	font-family: Arial, Helvetica, sans-serif;
}

input[type=text] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border-radius: 15px;
}

h5 {
	padding: 15px;
}

h3 {
	padding: 15px;
	text-align: center;
}

.logoutbtn {
	margin-left: 25px;
	padding: 10px;
	background-color: #D3D3D3;
	border-radius: 10px;
}

.container {
	width: 80%;
	align-content: center;
	padding: 30px;
	background-color: #f1f1f1;
	border-radius: 20px;
	margin-bottom: 20px;
}

.Price {
	color: white;
	width: 100%;
	padding-top: 60px;
}

.reserve {
	align: center;
	padding: 10px;
	background-color: #D3D3D3;
	border-radius: 10px;
	width: 60%;
	margin-top: 40px;
}
</style>

</head>
<body>
	<div class="jumbotron">
		<a href="logout.jsp" class="logoutbtn">Log Out</a>
	</div>

	<%
		//depending on combinations, use different queries

		//will contain the airport ID, otherwise "-1" as the value, which is invalid
		String deptAirport = request.getParameter("deptAirport");
		//out.print(deptAirport);
		String arrAirport = request.getParameter("arrAirport");
		//out.print(arrAirport);	

		String deptDate = request.getParameter("departureDate");
		//out.print(deptDate);

		String query = " SELECT * FROM Flight.FlightNumber, Flight.Departure_Airport, Flight.Arrival_Airport, Flight.Departure_Date, Flight.Arrival_Date, Flight.Flight_Type, Flight.Return_Date, Flight.Price, Flight.Departure_Time, Flight.Arrival_Time, Airlines.Name FROM Flight INNER JOIN Airlines ON Flight.Airline_ID = Airlines.Airline_ID AND Flight.Departure_Airport = '"
				+ deptAirport + "' AND Flight.Arrival_Airport = '" + arrAirport + "' AND Flight.Departure_Date = '"
				+ deptDate + "' ";

		//flightType will be either "oneWay" or "roundTrip", enter it like that in the database
		String flightType = request.getParameter("flightType");
		//out.print(flightType);

		String returnDate;
		//if its a round trip, query will also be different
		if ("roundTrip".equals(flightType)) {
			returnDate = request.getParameter("returnDate");
			//out.print(returnDate);
			String toAdd = " AND Flight.Flight_Type = 'Return' AND Flight.Return_Date = '" + returnDate + "' ";
			query = query + toAdd;
			//out.print(query);
		}

		String isFlexible = request.getParameter("flexibleD/T");
		//out.print(isFlexible);

		if ("flexible".equals(isFlexible)) {
			//find out a GODDAMN WAY to make the dates flexible
		}

		//price range is a string so convert two different values(floats?)
		String priceRange = request.getParameter("price");
		//out.print(priceRange);
		if (priceRange != null) {
			int priceHigh, priceLow;
			if ("under200".equals(priceRange)) {
				priceLow = 0;
				priceHigh = 199;

				//price is under 200
			} else if ("200-499".equals(priceRange)) {
				priceLow = 200;
				priceHigh = 499;
			} else if ("500-799".equals(priceRange)) {
				priceLow = 500;
				priceHigh = 799;
			} else {//price is above 800
				priceLow = 800;
				priceHigh = 2000;
			}
			String toAddRange = " AND Flight.Price BETWEEN '" + priceLow + "' AND '" + priceHigh + "' ";
			query = query + toAddRange;
		}

		//will return the value as a string
		//String numStops = request.getParameter("stops");

		//-1 if none selected, otherwise will be the airline id 
		String selectAirline = request.getParameter("airline");
		//out.print(selectAirline);
		if (!"-1".equals(selectAirline)) {
			String airlineCheck = " AND Flight.Airline_ID = '" + selectAirline + "' ";
			query = query + airlineCheck;
		}

		//will be the category to sort by
		String sortBy = request.getParameter("sort");
		//out.print(sortBy);
		String addSorting;
		if ("priceH2L".equals(sortBy)) {
			addSorting = " ORDER BY Flight.Price DESC ";
		} else if ("priceL2H".equals(sortBy)) {
			addSorting = " ORDER BY Flight.Price ASC ";
		} else if ("departTime".equals(sortBy)) {
			addSorting = " ORDER BY Flight.Departure_Time ASC ";
		} else {
			addSorting = " ORDER BY Flight.Arrival_Time ASC ";
		}
		query = query + addSorting;

		//out.print(query);

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem",
				"Group55", "Jsk1234.");

		Statement st = con.createStatement();
		ResultSet rs;
		rs = st.executeQuery(query);

		String flightNum;
		while (rs.next()) {
			flightNum = rs.getString("FlightNumber");
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="row">
					<img src="images/flight.png">
					<h1><%=rs.getString("Name")%></h1>
				</div>
				<div class="row">
					<h5 class="offset-md-3 col-md-3">
						<b>Airport</b>
					</h5>
					<h5 class="col-md-3">
						<b>Date</b>
					</h5>
					<h5 class="col-md-3">
						<b>Time</b>
					</h5>
				</div>
				<div class="row">
					<h3 class="col-md-3">
						<b>Departure</b>
					</h3>
					<h5 class="col-md-3"><%=rs.getString("Departure_Airport")%></h5>
					<h5 class="col-md-3"><%=rs.getString("Departure_Date")%></h5>
					<h5 class="col-md-3"><%=rs.getString("Departure_Time")%></h5>
				</div>
				<div class="row">
					<h3 class="col-md-3">
						<b>Arrival</b>
					</h3>
					<h5 class="col-md-3"><%=rs.getString("Arrival_Airport")%></h5>
					<h5 class="col-md-3"><%=rs.getString("Arrival_Date")%></h5>
					<h5 class="col-md-3"><%=rs.getString("Arrival_Time")%></h5>
				</div>
			</div>
			<div class="col-md-4"
				style="background-color: #888888; border-radius: 20px;">
				<div class="row">
					<h3 class="Price">
						$<%=rs.getString("Price")%></h3>
				</div>
				<div class="row"
					style="display: flex; align-items: center; justify-content: center;">
					<a href="reserve.jsp?flight_Num=<%=rs.getString("FlightNumber")%>"
						class="reserve">Reserve</a>
				</div>

			</div>
		</div>
	</div>
	<%
		}
	%>

</body>
</html>