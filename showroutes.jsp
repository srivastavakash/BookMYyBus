<html>
    
            <head>
                <title>Book My Bus</title>
                <link rel="stylesheet" href="style.css">
                
            </head>
        <body>
            <div id="top-menu"></div>
            <div id="header" style="height:100px">
                        <img src="bus.png" style="height:70px;width:100px;margin-left:10px;float:left">
                        <h1 style="margin-top:30px">B00k My Bus</h1>
            
            </div>
          <nav>
                <ul>
                
                  <li><a href="vehicles.html">Available Vehicles</a></li>
                  <li><a href="showroutes.jsp"> Vehicle Route</a></li>
                  <li style="background-color:#000;"><a href="BookCab.jsp" >Book</a></li>
                  <li><a href="#">Explore our range</a></li>
                              
                </ul>
            </nav>
            </div>
            <%@ page import="java.sql.*"%>
            <%@ page import="java.io.*" %> 
            <% 
            try{
            Connection connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/user", "root", "dreamer");
            PreparedStatement ps =connection.prepareStatement("select * from routeinfo");
            ResultSet rs = ps.executeQuery();
            %>
            <table border="1" id="booking-table" cellpadding="10" style="border-collapse:collapse;padding:20px;margin-top:30px;margin-left:200px">
                    <tr style="background-color:#ffcc66">
                        <td> Route No</td>
                        <td> Start Route</td>
                        <td> End Route</td>
                    </tr>
                    <% 
                    int i =0;
                   while(rs.next()){ %>
                   <tr style="background-color:#e6e6e6">
                        <td><%=++i%></td>
                    <td><%=rs.getString("Source") %></td>
                    <td><%=rs.getString("Destination") %></td>
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
            <hr>
            
            <hr>
            <footer> 
                
        </footer>
   </body>
</html>