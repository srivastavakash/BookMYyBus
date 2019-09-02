<html>

        <head>
            <title>Book My Bus</title>
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
                          <li><a href="#"> Vehicle Route</a></li>
                          <li><a href="#">My Profile</a></li>
                          <li><a href="BookCab.jsp">Book My Ticket  </a></li>
                          <li><a href="#">Explore our range</a></li>
                          <li style="float:right"><a href="#">Log out</a></li>
                        </ul>
                      </nav>
        <% String MobileNo = (String)session.getAttribute("mobile"); 
         out.println("Welcome "+(String)session.getAttribute("name")+" "+MobileNo); 
         %>
         <table> 
             <tr>
             <td><input type="hidden" name="mobile" value="<%= MobileNo %>"> </td>
             </tr>
         </table>
    <footer>   </footer>
    </body>
    </html>