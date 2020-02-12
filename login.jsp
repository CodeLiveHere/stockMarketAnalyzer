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



</body>
</html>



try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/newmaaz?useSSL=false","root","Maaz@Khan777");  
//here sonoo is database name, root is username and password  
PreparedStatement stmt=con.prepareStatement("Select RegisterUsername,RegisterEmail,RegisterPwd from users where RegisterUsername=? and RegisterEmail=? and RegisterPwd=?");  
//stmt.executeUpdate("insert into myTable(RegisterUsername,RegisterEmail,RegisterPwd) values(RegisterUsername,RegisterEmail,registerPwd)");  
stmt.setString(1, RegisterUsername);
stmt.setString(2, RegisterEmail);
stmt.setString(3, RegisterPwd);
ResultSet rs=stmt.executeQuery();


//while(rs.next())  
//System.out.println(rs.getInt(1)+" "+rs.getString(2));  
con.close();  
}catch(Exception e){ System.out.println(e);}  				