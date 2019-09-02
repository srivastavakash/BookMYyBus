<html>
    <%@ page session="false" %>
    
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
                          <li><a href="ourfeatures.html">Explore our range</a></li>
                          <li><a href="vehicles.html">Available Vehicles</a></li>
                          <li><a href="vehicleroute.jsp"> Vehicle Route</a></li>
                          <li style="background-color:#000;"><a href="BookCab.jsp" >Book My Bus</a></li>
                          <li><a href="ourfeatures.html">Why Ride with us ?</a></li>
                        </ul>
                      </nav>
    
            <br>
            <div id="main">
           <div id="login-form" style="float:left" >
                <form action="./login.jsp" id="f">
                    <table style="margin-left:50px">
                        <tr><td><p style="font-size:20px;color:#ffffff">Login for more....</p><br></td></tr>
                        <tr>
                           
                            <td>
                                    <img src="mobile.png" alt="logo" height="30px" width="30px" style="margin-right:20px"> 
                                <input type="text"  class="text-box1" name="mobno" placeholder="Mobile">
                            </td>
                        </tr>
                        <tr>
                                <td>
                                <img src="key.png" alt="password"  height="30px" width="30px" style="margin-right:20px">
                                <input type="password" name="pswrd"  class="text-box1" placeholder="Password">
                                </td>
                            </tr>
                    </table>
                    <br><br>
                    <div><input type="submit" value="Login" id="btn-submit1" style="width:290px;margin-bottom:10px"></div> 
                    <div><a href="Signup.html"><input type="button" value="New User ?" id="btn-submit1" style="width:290px"></a></div> <br>
                    <a href="AdminLogin.html" class="simple-link">Administrator login</a>
                    </form>
           </div>
           <div id="bg-img">


           </div>
        
        

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <footer> 
            <div id="footer1">
                    <br>
                <ol >
                     <li>ABOUT US </li>
                     <li style="margin-left:30px;margin-right:45px">Terms & Conditions</li>
                     <li style="margin-right:55px">FAQs</li>
                     <li style="margin-left:80px">MAKE MONEY WITH US</li>
                     <li style="margin-right:0px">STAY CONNECTED</li>
                     
                     <a id="up" href="#"><i class="top" ></i><br></a></div></li>
                </ol>
            </div>
            <div id="footer-menu">
            <p><a href="#"  style="color:#ffffff;text-decoration:none">Careers</a></p>
            <p><a href="#"  style="color:#ffffff;text-decoration:none">Blog</a></p></a>
            <p><a href="#"  style="color:#ffffff;text-decoration:none">Site Map</a></p>
            </div>
            <div id="footer-menu">
            <p><a href="#"  style="color:#ffffff;text-decoration:none">Acceptance</a></p>
            <p><a href="#"  style="color:#ffffff;text-decoration:none">Pricing</a></p>
            <p><a href="#"  style="color:#ffffff;text-decoration:none">Core Values</a></p>
            </div>
            
            <div id="footer-menu">
            <p><a href="#"  style="color:#ffffff;text-decoration:none">Earn with us</a></p>
            <p><a href="#"  style="color:#ffffff;text-decoration:none">Careers</a></p>
            <p><a href="#"  style="color:#ffffff;text-decoration:none">Blog</a></p>
            
            </div>
            </div>
            <br><br><br><br><br><br><br><br>
            <hr>
    </footer>
   </body>
</html>