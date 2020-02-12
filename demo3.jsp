<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
success!!
<%

try{ 
	//String RegisterUsername=request.getParameter("RegisterUsername");
	//String RegisterPwd=request.getParameter("RegisterPwd");
	String username=request.getParameter("username");
	String pwd=request.getParameter("pwd");

//Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/newmaaz?useSSL=false","root","Maaz@Khan777");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
//int i=stmt.executeUpdate("insert into users(RegisterUsername,RegisterEmail,RegisterPwd) values('"+RegisterUsername+"','"+RegisterEmail+"','"+RegisterPwd+"')");  
ResultSet rs=stmt.executeQuery("select * from users");
//int c=1;
while(rs.next()){
	
	
	
	if(rs.getString(1).equals(username) && rs.getString(3).equals(pwd)){
		
		System.out.println("you are an eligible user");
		
	}
	
	
	
}

//while(rs.next())  
//System.out.println(rs.getInt(1)+" "+rs.getString(2));  
con.close();  
}catch(Exception e){ System.out.println(e);}  


%>


</body>
</html>