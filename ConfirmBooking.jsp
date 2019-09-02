<html>
    <head>
        <title>
            Book My Bus - Online Bus Ticketing System
        </title>
        <link rel="stylesheet" href="style.css">
        
    </head>
    <body>
            <div id="header">
                    <img src="bus.png" style="height:70px;width:100px;margin-left:10px;float:left">
                    <h1>B00K My Bus</h1>
            </div>
        <nav>
            <ul>
                    <li><a href="ourfeatures.html">Explore our range</a></li>
                    <li><a href="vehicles.html">Available Vehicles</a></li>
                    <li><a href="vehicleroute.jsp"> Vehicle Route</a></li>
                    <li><a href="userprofile.jsp">My Profile</a></li>
                    <li><a href="BookCab.jsp">Book My Cab</a></li>
                    
                    <li style="float:right"><a href="home.jsp">Log out</a></li>
            </ul>
          </nav>        
          <%@ page import="java.sql.*"%>
          <%@ page import="java.io.*" %> 
          <%
          try{
              Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "dreamer");                
              Connection connection1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicleinfo", "root", "dreamer");       
              String src = (String)session.getAttribute("source");
              String dest = (String)session.getAttribute("destination");
              String mobile =(String)session.getAttribute("mobile");
              String vnum = (String)session.getAttribute("vnum");
              String BookingDate=new java.util.Date().toString();
              int seatcount=0;
              String ct="";
              //out.println(src+" "+dest+" "+mobile+" "+vnum+" "+BookingDate);
              String cust_type=(String)session.getAttribute("occupation");
              //out.println(cust_type);
              String reserved ="";
              PreparedStatement ps = connection1.prepareStatement("select * from vehicledetails where VehicleNumber='"+vnum+"'");
              //out.println("Vehicle selected");
              
              ResultSet rs = ps.executeQuery();
              
              if(rs.next())
              {

                %>
                <br><br>    
            <%
               
               // if(cust_type.equals(reserved)){ 
                    PreparedStatement ps1 = connection.prepareStatement("insert into bookinginfo(StartRoute,EndRoute,VehicleNumber,BookingDate,CustomerMobNo,Cust_Type) values('"+src+"','"+dest+"','"+vnum+"','"+BookingDate+"','"+mobile+"','"+ct+"')");
            %>
            <br>
             <%
                  
                    int rs1 = ps1.executeUpdate();
                    
                    if(rs1>0 ){
                        %>
                        <table border="1" id="booking-table" cellpadding="10" style="border-collapse:collapse;padding:20px;margin-top:30px;margin-left:200px">
                            <tr style="background-color:#ffcc66">
                                <td>Source City</td>
                                <td>Destination City</td>
                                <td>Vehicle Number</td>
                                <td>Booking Time</td>
                                <td>Passenger Name</td>
                                <td>Mobile Number</td>
                            </tr>
                            <tr>
                                <td><%=src%> </td>
                                <td><%=dest%> </td> `
                                <td><%=vnum%> </td>
                                <td><%=BookingDate%> </td>
                                <td><%=session.getAttribute("name")%></td>
                                <td><%=mobile%> </td>
                            </tr>
                        </table>
                       <font size="+2" color="green"></b><br><br>
                        <img src="thumb.png">
                        <%
                    out.println("Booking Successful");
                    
                    }
              //  }
                else{ out.println("Error Occurred while booking.Try Again :( :(");
                }
               

                  
                }
                %>
                <font size="+2" color="green"></b><br><br>
                    <%
               // out.println(seatcount);
               

                
            connection.close(); 
            }
            catch(Exception ex){
            %>
            </font>
            <font size="+3" color="red"></b>
            <%
            out.println("Error Occurred :  "+ex);
            }
            %>
        



