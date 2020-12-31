<!--Dhruti Shah dis47-->

<%@ page import="java.sql.*" %>
<%
   String Email = request.getParameter("email");
   String Password = request.getParameter("pswd");
   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");
 
	Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admmin where Email = '" + Email + "' and Password = '" + Password + "'");
    if(rs.next()){
        //rs = st.executeQuery("SELECT F_Name from Customer where Email = '" + Email + "';");
        //String name = rs.getString(1);
        out.println("Succesful Login"+ Email);
        out.println("<a href='index.jsp'>Sign Out</a>");
        response.sendRedirect("Welcome.jsp");
    }else{
        //response.sendRedirect("index.jsp");
        out.println("Succesfully Registered. Welcome to  <a href = 'AboutPage.jsp'>Airline Reservation System</a>");
    }
%>