<html>
        <head>
            <title>Register Yourself</title>
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
                          <li><a href="#">Set Vehicle Route</a></li>
                          <li style="float:right"><a href="#">Log out</a></li>
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
            String connectionURL = "jdbc:mysql://localhost:3306/user"; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        
        Connection connection = DriverManager.getConnection(connectionURL, "root", "dreamer");
        //out.println("Sign Up Sucessfull");
        String name =request.getParameter("uname");
        String mob =request.getParameter("mobile");
        //int mobileno=Integer.ParseInt(mob);
        /*char ch[] = mob.toCharArray();
        int mobileno = 0;
        //get ascii value for zero
        int zeroAscii = (int)'0';
        for(char c:ch){
            int tmpAscii = (int)c;
            mobileno = (mobileno*10)+(tmpAscii-zeroAscii);    
        }*/
        String email =request.getParameter("email");
        String password =request.getParameter("password");
        //out.println(name);
        PreparedStatement ps =connection.prepareStatement("INSERT INTO reginfo(Name,Mobile,Email,Password) VALUES('"+name+"','"+mob+"','"+email+"','"+password+"')");
        int rs = ps.executeUpdate();
        if(rs>0){
            %>
            <font size="+2" color="green"></b>
                <%
                out.println("Registered Successfully");
                }
        connection.close();
        }
        catch(Exception ex){
        %>
        </font>
        <font size="+3" color="red"></b>
        <%
        out.println("Error Occurred"+ex);
        }
        %>
        
    </form>
    </div>
    <footer>
            
                </footer>
    </body>
    </html>