<!--Dhruti Shah dis47-->
 <!--Wendell Rousse wmr28 -->

<%@ page import ="java.sql.*" %>

<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");

    ResultSet rs;
    
    System.out.println(request.getParameter("action"));
    
    if(request.getParameter("action").equals("create")){
    	String execute = new StringBuilder()
 	           .append("INSERT INTO `AirlineReservationSystem`.`airport` (`AirportId`, `Name`, `City`, `Country`)")
 	           .append(" VALUES (?, ?, ?, ?)")
 	           .toString();
    	    PreparedStatement st = con.prepareStatement(execute);
    		st.setString(1, request.getParameter("AirportId"));
    		st.setString(2, request.getParameter("Name"));
    		st.setString(3, request.getParameter("City"));
    		st.setString(4, request.getParameter("Country"));
    		System.out.println(execute);
    		st.execute();
    		st.close();
    		
    		//Error Check
    		
    }else if(request.getParameter("action").equals("update")){
    	String execute = new StringBuilder()
    	           .append("UPDATE `AirlineReservationSystem`.`airport` SET")
    	           .append(" `City`=" + "'" + request.getParameter("City") + "'")
    	           .append(", `Country`=" + "'" + request.getParameter("Country") + "'")
    	           .append(" WHERE " + " `AirportId`=" + "'" + request.getParameter("AirportId") + "'")
    	           .toString();
    		System.out.println(execute);
	    	Statement st = con.createStatement();
			st.executeUpdate(execute);
			st.close();
    }
    else {
    	String query = "DELETE FROM `AirlineReservationSystem`.`airport` WHERE `AirportId`='" + request.getParameter("AirportId") + "'";
    	Statement st = con.createStatement();
    	st.executeUpdate(query);
		st.close();
		
    	
    }
    
    response.sendRedirect("airports.jsp");
    con.close();
    

%>