<html>
        <head>
            <title> Book My Bus</title>
            <link rel="stylesheet" href="style.css">
            
        </head>
    <body>
            <div id="header">
                    <img src="bus.png" style="height:70px;width:100px;margin-left:10px;float:left">
                    <h1>Book My Bus</h1>
        
                </div>
                <nav>
                        <ul>
                          <li><a href="#">Home</a></li>
                          <li><a href="AddVehicle.html">Explore Vehicles</a></li>
                          <li><a href="#">Vehicle Routes</a></li>
                          
                        </ul>
                      </nav>
        <div id="form-container" class=".container">                  
        <form action="./reg.jsp" method="post">
        <table> 
            <tr>
                <td class="simple-text">
                    Name
                </td>
                <td>
                        <input type="text"  class="text-box"name="uname">
                    </td>
            </tr>
            <tr>
                    <td class="simple-text">
                        Mobile
                    </td>
                    <td>
                            <input type="text"  class="text-box"name="mobile">
                        </td>
                </tr>
                <tr>
                        <td class="simple-text">
                            Email
                        </td>
                        <td>
                                <input type="text"  class="text-box"name="email">
                            </td>
             </tr>
             <tr>
                    <td class="simple-text">
                        Password
    
                    </td>
                    <td>
                            <input type="password" name="password" class="text-box" style="font-size:18px">
                        </td>
                    </tr>
        </table>
        <input type="submit" value="Register" id="btn-submit" style="width:300px">
        <%@ page import="java.sql.*"%>
        <%@ page import="java.io.*" %> 
        <font size="+3" color="green"></b><br>
        <% 
        try{
        String connectionURL ="jdbc:mysql://localhost:3306/user";
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
        Connection connection = DriverManager.getConnection("connectionURL", "root", "dreamer");
        String name =request.getParameter("uname");
        String mob =request.getParameter("mobile");
        String email =request.getParameter("email");
        String password =request.getParameter("password");
        String occ="";
        //out.println(name);
        PreparedStatement ps =connection.prepareStatement("INSERT INTO customer_info(Name,Email,Mobile,Password,Occupation) VALUES('"+name+"','"+email+"','"+mob+"','"+password+"','"+occ+"')");
        int rs = ps.executeUpdate();
        if(rs>0){
            %>
            <font size="+2" color="green"></b>
                <%
                out.println("Registered Successfully");
                }
                %>
                <br> <a href="Login.html"><input type="button" value="Login Here" id="btn-submit" style="width:300px">
        <%                    
        connection.close(); 
        }
        catch(SQLException ex){
        %>
        </font>
        <font size="+3" color="red"></b>
        <%
        out.println("Error Occurred "+ex.getErrorCode());
        }
        %>
        
    </form>
    </div>
    <footer>
            
                </footer>
    </body>
    </html>