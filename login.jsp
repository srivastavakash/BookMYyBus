<html>
        <head>
            <title>Admin Login Section</title>
            <link rel="stylesheet" href="style.css">
        </head>
        <body>
                <div id="header">
                  <img src="bus.png" style="height:70px;width:100px;margin-left:10px;float:left">
                    <h1>Book My Bus</h1>
                </div>
                <nav>
                                <ul>
                                  <li><a href="#">Admin Home</a></li>
                                  <li><a href="AddVehicle.html">Add Vehicle</a></li>
                                  <li><a href="Set Route.html">Set Vehicle Route</a></li>
                                  <li><a href="ViewBooking.jsp">View All Bookings</a></li>
                                  <li style="float:right"><a href="#">Log out</a></li>
                                </ul>
                        </nav>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %> 
<% 
try{String connectionURL = "jdbc:mysql://localhost:3306/user"; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection connection = DriverManager.getConnection(connectionURL, "root", "dreamer");
String mobile =request.getParameter("mobno");
String password =request.getParameter("pswrd");
session.setAttribute("mobile",mobile);
PreparedStatement ps =connection.prepareStatement("select * from customer_info where Mobile='"+ mobile+ "' AND Password='"+ password+"'");
ResultSet rs = ps.executeQuery();
if(rs.next())    
%>
<font size="+2" color="green">
<%    
session.setAttribute("name",rs.getString("Name"));
response.sendRedirect("CustomerDashboard.jsp");
connection.close();
}
catch(Exception ex){
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Error Occurred :"+ex);
//out.println(ex.printStackTrace());
}
%>
</font>
</body>
</html>