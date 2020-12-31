<!--Dhruti Shah dis47-->


<%@ page import="java.sql.*" %>
<%
    String newEmail = request.getParameter("email");
    String newPassword = request.getParameter("pswd");
    String newFName = request.getParameter("fname");
    String newLName = request.getParameter("lname");
    String newPhoneNum = request.getParameter("pnum");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://airlinereservationsystem.crdzgjx7ve4w.us-east-2.rds.amazonaws.com:3306/AirlineReservationSystem","Group55", "Jsk1234.");

    Statement st = con.createStatement();
     st.executeUpdate("INSERT INTO admmin(Email,Password)" + " VALUES ('" + newEmail + "','" + newPassword + "');");
     st.executeUpdate("INSERT INTO customers(Email,FName,LName,PhoneNumber)" + " VALUES ('" + newEmail + "','" + newFName + "','" + newLName + "','" + newPhoneNum + "');");
     response.sendRedirect("index.jsp");
 %>