<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
welcome to connection tutorial

</h1>
 
<form>
         reg <input type = "text" name = "reg">
         <br />
         Last Name: <input type = "text" name = "uname" />
         <input type = "submit" value = "Submit" />
      </form>
       

<%
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/newmaaz?useSSL=false","root","Maaz@Khan777");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("Select * from mytable");  
while(rs.next())  
System.out.println(rs.getInt(1)+" "+rs.getString(2));  
con.close();  
}catch(Exception e){ System.out.println(e);}  



%>
</body>
</html>