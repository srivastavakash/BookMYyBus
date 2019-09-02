<html>
        <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Add Vehicle</title>
                
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        </head>
        <body>
            <div id="header">
                <img src="bus.png" style="height:70px;width:100px;margin-left:10px;float:left">
                <h1>B00K My Bus</h1>
    
            </div>
            <nav>
                    <ul>
                      <li><a href="AdminLogin.html">Admin Home</a></li>
                      <li><a href="AddVehicle.jsp">Add Vehicle</a></li>
                      <li><a href="Set Route.html">Set Vehicle Route</a></li>
                      <li style="float:right"><a href="#">Log out</a></li>
                    </ul>
                  </nav>
            <div id="form-container" class=".container">
                    
            <form action="./addvehicle.jsp" method="post">
            <table>
                <tr style="margin-top:10px" >
                    <td class="simple-text">
                          Vehicle Name
                    </td>
                    <td>
                            <input type="text" class="text-box" name="vname" placeholder="Enter Vehicle Name">
                    </td>
                </tr>
                <tr style="margin-top:10px">
                    <td class="simple-text">
                        Vehicle Number
                    </td>
                    <td>
                            <input type="text" class="text-box" name="vno" placeholder="Enter Vehicle Number">
                    </td>
                </tr>
                <tr style="margin-top:10px">
                        <td class="simple-text">
                              Vehicle Type
                        </td>
                        <td>
                                <select name="vtype" style="height:30px;width:200px">
                                    <option value="Select Type"></option>
                                    <option value="Sedan" >Sedan</option>
                                    <option value="SUV">SUV</option>
                                    <option value="Compact SUP">Compact SUP</option>
                                    <option value="MUV">MUV</option>
                                    <option value="HatchBack">HatchBack</option>
                                </select>
                        </td>
                    </tr>
                    <tr style="margin-top:10px">
                            <td>
                             <input type="radio" name="ac" > AC
                            </td>
                            <td>
                                    <input type="radio" name="nac"> Non-AC
                            </td>
                        </tr>
                        <tr style="margin-top:10px">
                                <td class="simple-text">
                                    No of Seats
                                </td>
                                <td>
                                        <input type="number" name="seatno" style="height:30px;width:200px" placeholder="No of Seats">
                                </td>
                            </tr>
                            <tr style="margin-top:10px">
                                    <td class="simple-text">
                                       Description
                                    </td>
                                    <td>
                                       <textarea name="desc" id="" cols="26" rows="5" placeholder="Vehicle Description"></textarea>
                                    </td>
                                </tr>
                                <tr style="margin-top:10px">
                                        <td class="simple-text">
                                              Driver Name
                                        </td>
                                        <td>
                                                <input type="text" class="text-box" name="drivername" placeholder="Driver Name">
                                        </td>
                                    </tr>
                                    <tr style="margin-top:10px">
                                            <td class="simple-text">
                                                  Driver Mob No
                                            </td>
                                            <td>
                                                    <input type="text" class="text-box" name="drivermobno" placeholder="Driver Mobile Number">
                                            </td>
                                        </tr>
                                        
                
            </table>
            <div> <input type="submit" value="Add Vehicle" id="btn-submit"></div>
            <%@ page import="java.sql.*"%>
            <%@ page import="java.io.*" %> 
            <% 
            try{        
                String connectionURL = "jdbc:mysql://localhost:3306/vehicleinfo"; 
                Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            
            Connection connection = DriverManager.getConnection(connectionURL, "root", "dreamer");
            //out.println("Successfully connected to " + "MySQL server using TCP/IP...");
            String vname =request.getParameter("vname");
            String vno =request.getParameter("vno");
            String vtype =request.getParameter("vtype");
            String ac =request.getParameter("ac");
            String seats =request.getParameter("seatno");
            String desc =request.getParameter("desc");
            String dname =request.getParameter("drivername");
            String dmob =request.getParameter("drivermobno");
            //out.println(name);
            PreparedStatement ps =connection.prepareStatement("INSERT INTO VehicleDetails(VehicleName,VehicleNumber,VehicleType,AC,Seats,Description,DriverName,DriverMobNo) VALUES('"+vname+"','"+vno+"','"+vtype+"','"+ac+"','"+seats+"','"+desc+"','"+dname+"','"+dmob+"')");
            int rs = ps.executeUpdate();
            if(rs>0){
                %>
                <font size="+2" color="green"></b>
                    <%
                    out.println("Vehicle Added");
                    }
            connection.close();
            }
            catch(Exception ex){
            %>
            </font>
            <font size="+3" color="red"></b>
            <%
            out.println("Error Occurred :::  "+ex);
            }
            %>
            </form>
        </div>

        <script src="js/jquery-1.11.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <footer>
            
        </footer>
        </body>
    </html>

</font>
