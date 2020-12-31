<!--Dhruti Shah dis47-->
<!--Wendell Rousse wmr28 -->

<%@ page import ="java.sql.*" %>
<%
	String Email = request.getParameter("email");
	String Password = request.getParameter("pswd");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");
   
    ResultSet rs;
  
    
    if(request.getParameter("action").equals("create"))
    	
      {
    	 	String execute = "INSERT INTO `AirlineReservationSystem`.`Airlines` (`Airline_ID`, `Name`) VALUES (?, ?)";
    	    PreparedStatement st = con.prepareStatement(execute);
    		st.setString(1, request.getParameter("Airline_ID"));
    		st.setString(2, request.getParameter("Name"));
    		st.execute();
    		st.close();
    		
      }
    
    else 
     {
    	String query = "DELETE FROM `AirlineReservationSystem`.`Airlines` WHERE `Airline_ID`='" + request.getParameter("Airline_ID") + "'";
    	Statement st = con.createStatement();
    	st.executeUpdate(query);
		st.close();
	 }
    
    response.sendRedirect("airlines.jsp");
    con.close();
    

%>