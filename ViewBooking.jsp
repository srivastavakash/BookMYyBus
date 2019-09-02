<html>
    <head>
        <title>Admin Login Section</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
            <div id="header">
              <img src="bus.png" style="height:70px;width:100px;margin-left:10px;float:left">
                <h1>B00k My Bus</h1>
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
                    try{
                    Connection connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/user", "root", "dreamer");
                    PreparedStatement ps =connection.prepareStatement("select * from bookinginfo");
                    ResultSet rs = ps.executeQuery();
                    %>
                    <table border="1" id="booking-table" cellpadding="10" style="border-collapse:collapse;padding:20px;margin-top:30px;margin-left:200px">
                            <tr style="background-color:#ffcc66">
                                <td> Start Route</td>
                                <td> End Route</td>
                                <td> Vehicle Number</td>
                                <td> Booking Date</td>
                                <td> Customer Contact</td>
                            </tr>
                            <% 
                           while(rs.next()){ %>
                           <tr style="background-color:#e6e6e6">
                            <td><%=rs.getString("StartRoute") %></td>
                            <td><%=rs.getString("EndRoute") %></td>
                            <td><%=rs.getString("VehicleNumber") %></td>
                            <td><%=rs.getString("BookingDate") %></td>
                            <td><%=rs.getString("CustomerMobNo") %></td>
                          </tr>
                          <%
                        }
                        %>
                        </table>
                        <%
                    connection.close();
                    }
                    catch(Exception ex){
                    %>
                    <font size="+3" color="red"></b>
                    <%
                    out.println("Error Occurred :"+ex);
                    }
                    %>
                </font>
    </body>
</html>
