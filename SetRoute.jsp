
<html>
    <head>
        <title>Set Vehicle Route</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
            <div id="header">
                    <img src="bus.png" style="height:70px;width:100px;margin-left:10px;float:left">
                    <h1>Book My Bus</h1>
        
                </div>
                <nav>
                        <ul>
                          <li><a href="log.jsp">Admin Home</a></li>
                          <li><a href="AddVehicle.html">Add Vehicle</a></li>
                          <li><a href="Set Route.html">Set Vehicle Route</a></li>
                          <li style="float:right"><a href="AdminLogin.html">Log out</a></li>
                        </ul>
                      </nav>
        <div id="form-container">
            <form action="./SetRoute.jsp" method="post">
                <table>
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
                           <option value="Vadodara">Vdodara</option>
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
                 
                    </tr>     <tr>
                        <td class="simple-text"> Vehicle Type </td>
                        <td>
                            <select name="vtype" class="text-box">
                                   <option value="null">Select Type</option>
                                    <option value="Sedan">Sedan</option>
                                    <option value="SUV">SUV</option>
                                    <option value="Compact SUP">Compact SUP</option>
                                    <option value="MUV">MUV</option>
                                    <option value="HatchBack">HatchBack</option>
                                </select>
                                </td>
                    </tr>
                    <tr> <td class="simple-text"> Vehicle Number</td> <td> <input type="text" class="text-box" name="vnumber"> </td>
                    </tr>
                </table>
                <div><input type="submit" value="Set Route" id="btn-submit"></div>
            </form>
    </div>
        <br>
            
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %> 
<% 
try{
String connectionURL = "jdbc:mysql://localhost:3306/user"; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection connection = DriverManager.getConnection(connectionURL, "root", "dreamer");
//out.println("Successfully connected to " + "MySQL server using TCP/IP...");
String source =request.getParameter("source");
String destination =request.getParameter("destination");
String vtype =request.getParameter("vtype");
String vnumber =request.getParameter("vnumber");
Connection connection1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicleinfo", "root", "dreamer");    
PreparedStatement ps1 = connection1.prepareStatement("select * from vehicledetails where VehicleNumber ='"+vnumber+"'");
ResultSet rs1 = ps1.executeQuery();
if(rs1.next()){
PreparedStatement ps =connection.prepareStatement("INSERT INTO RouteInfo(Source,Destination,VehicleType,VehicleNumber) VALUES('"+source+"','"+destination+"','"+vtype+"','"+vnumber+"')");
int rs = ps.executeUpdate();
if(rs>0){
%>
<b><font size="+2" color="green"></b>
    <%
    out.println("This Route has been Set");
    }
connection.close();
}
else{
%>

<font size="+2" color="red"></b>
    <%
    out.println("This Vehicle Number does not exists");
}
}
catch(Exception ex){
%>
</font>
<font size="+2" color="red"></b>
<%
out.println("Error Occurred :"+ex);
}
%>
</font>
    </body>
</html>
