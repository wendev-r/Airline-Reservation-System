<!--Dhruti Shah dis47-->
<!-- Wendell Rousse wmr28-->
<!--Unnit Patel ugp5-->
<!--Janki Patel jsp231-->


<%@ page import ="java.sql.*" %>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> | Airline Reservation System</title>
    </head>
    <body>
       	<div align="center" >
       		<%
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");
				Statement st = con.createStatement();
				ResultSet rs;

				String execute = new StringBuilder()
					.append("select r.passengers, max(x) ")
					.append("from (select passengers, sum(fee) x ")
					.append("from reservation_data ")
					.append("group by passengers) t1, ")
					.append("reservation_data r ")
					.append("where r.passengers = t1.passengers")
					.toString();
					rs = st.executeQuery(execute);
					
					if(rs.next()){
			 %>
		 		<h1>
		 		<%
		 		String[] passengers = rs.getString("passengers").split(",");
		 		// First person is buyer
		 		out.println(passengers[0]); 
		 		
		 		%>
		 		</h1>
		 		<h1>Total Revenue Generated $<%out.println(rs.getString("max(x)")); %></h1>
		 
		 	<%
						    }

    
                         rs.close();
                         st.close();
                         con.close();
                    }
                    catch(Exception e)
                    {
                         e.printStackTrace();
                    }
            %>
       	</div>
    </body>
</html>