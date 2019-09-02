<html>
    <head>
        <title>
            Book My BUS
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
                    <li><a href="#">Explore our range</a></li>
                    <li><a href="#">Available Vehicles</a></li>
                    <li><a href="#"> Vehicle Route</a></li>
                    <li><a href="#">My Profile</a></li>
                    <li><a href="#">Book my Ticket</a></li>
                    <li style="float:right"><a href="home.jsp">Log out</a></li>
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
                             <option value="Vadodara">Vdodara</option>
                             <option value="Varanasi">Varanasi</option>
     
                         </select>
                       </td>
                     
                            <td class="simple-text"> Destination </td>
                            <td> <select name="destination" class="text-box">
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
                           <td>Number of seats </td><td><input type="number" name="seatno" class="simple-text"></td>
                            <td><input type="hidden" name="mobile" value="<%= (String)session.getAttribute("mobile") %>"> </td>
                            <td><input type="hidden" name="name" value="<%= (String)session.getAttribute("name") %>"> </td>
                      </tr>                    
                </table>
                <div> <input type="submit" value="Search" id="btn-submit" style="width:150px;margin-left:30px"></div>
                </form>
            </div>
    </body>
    <footer></footer>
</html>