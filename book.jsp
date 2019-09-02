<html>
        <%@ page import="java.sql.*"%>
        <%@ page import="java.io.*" %> 
        <head>
            <title>
                Book My Cab - Book My Bus
            </title>
            <link rel="stylesheet" href="style.css">
            
        </head>
        <body>
                <div id="header">
                        <img src="bus.png" style="height:70px;width:100px;margin-left:10px;float:left">
                        <h1>Book My Bus</h1>
            
                    </div>
            <nav>
                <ul>
                        <li><a href="#">Explore our range</a></li>
                        <li><a href="#">Available Vehicles</a></li>
                        <li><a href="#">Vehicle Route</a></li>
                        <li><a href="#">My Profile</a></li>
                        <li><a href="#">Book My Cab</a></li>
                        <li><a href="#">Explore our range</a></li>
                        <li style="float:right"><a href="#">Log out</a></li>
                </ul>
              </nav>        
    
              <div id="form-container" style="margin-left:100px">
                    <form action="./book.jsp" method="post">
                        <table style="float:left">
                          <tr>
                              <td class="simple-text"> Source </td>
                              <td> <select name="source" class="text-box">
                                   <option value="null">Souce City</option>
                                    <option value="Allahabad">Allahabad</option>
                                    <option value="Agra">Agra</option>
                                    <option value="Amethi">Amethi</option>
                                    <option value="Amritsar">Amritsar</option>
                                    <option value="Ghaziabad">Ghaziabad</option>
                                    <option value="Kanpur">Kanpur</option>
                                    <option value="Lucknow">Lucknow</option>
                                    <option value="Vadodara">Vadodara</option>
                                    <option value="Varanasi">Varanasi</option>
            
                                </select>
                              </td>
                         
                                <td class="simple-text"> Destination </td>
                                <td> <select name="destination" class="text-box">
                                    <option value="null">Destination City</option>
                                     <option value="Allahabad">Allahabad</option>
                                     <option value="Agra">Agra</option>
                                     <option value="Amethi">Amethi</option>
                                     <option value="Amritsar">Amritsar</option>
                                     <option value="Ghaziabad">Ghaziabad</option>
                                     <option value="Kanpur">Kanpur</option>
                                     <option value="Lucknow">Lucknow</option>
                                     <option value="Vadodara">Vdodara</option>
                                     <option value="Varanasi">Varanasi</option>
             
                                 </select>
                               </td>
                       
                          </tr>                    
                    </table>
                    <div> <input type="submit" value="Search" id="btn-submit" style="width:150px;margin-left:30px"></div>
                    </form>
                    <% 
             try{
                                                                                                                  
                       String connectionURL = "jdbc:mysql://localhost:3306/user"; 
                       Class.forName("com.mysql.jdbc.Driver").newInstance(); 
                       Connection connection = DriverManager.getConnection(connectionURL, "root", "dreamer");     
                       String Source=request.getParameter("source");
                       String Destination=request.getParameter("destination");
                       String mobile = (String)session.getAttribute("mobile");
                       String seatcount=request.getParameter("seatno");
                       PreparedStatement ps = connection.prepareStatement("select * from routeinfo where Source='"+Source+"' and Destination='"+Destination+"'");
                       ResultSet rs = ps.executeQuery();
                       int count = 0;
                       session.setAttribute("source",Source);
                       session.setAttribute("destination",Destination);
                           %>
                           <form action="./ConfirmBooking.jsp" method="post">
                        <table border="1" id="booking-table" style="border-collapse:collapse;padding:20px">
                            <tr>
                                <td> Vehicle Type</td>
                                <td> Source</td>
                                <td> Destination</td>
                            </tr>
                            <% 
                           while(rs.next()){ %>
                           <tr>
                            <td><%=rs.getString("VehicleType") %></td>
                            <td><%=rs.getString("Source") %></td>
                            <td><%=rs.getString("Destination") %></td>
                            <% session.setAttribute("vnum",rs.getString("VehicleNumber")); %>
                            <td><input type="submit" value="Book Now"></td> <br>
                           
                          </tr>
                        
                    </form>
            
                   
                        <%
                       } 
                       %>
                    </table>
                       
                       <table>
                            <tr><td><input type="hidden" name="mobile" value="<%= (String)session.getAttribute("mobile") %>"> </td>
                               
                            </tr>
                        </table>
                        <%

                       }
                    catch (Exception exp){
                        %>
                        <font size="+2" color="red">
                        <%
                        out.println("Error occured "+exp);
                    }
                       %>
                        </font>
                </div>
    
        </body>
    </html>