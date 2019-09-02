<!DOCTYPE HTML> 

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %> 

<html> 
<head> 
</head> 
<body>
<% 
try {

    String connectionURL = "jdbc:mysql://localhost:3306/user"; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 

Connection connection = DriverManager.getConnection(connectionURL, "root", "dreamer");

if(!connection.isClosed())
%>
<font size="+3" color="green"></b>
<% 
//out.println("Successfully connected to " + "MySQL server using TCP/IP...");
String email =request.getParameter("email");
String password =request.getParameter("password");
//out.println(name);
//PreparedStatement ps =connection.prepareStatement("INSERT INTO reginfo(Name,Mobile,Email,Password) VALUES('"+name+"','"+mob+"','"+email+"','"+password+"')");
//int rs = ps.executeUpdate();
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
</font>
</body> 
</html>