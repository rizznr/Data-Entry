<!DOCTYPE html>
<html>
	
  <head>
	<title>JSP FILE</title>
 </head>
<body>
	<%@ page import ="javax.sql.*"%>
	<%@ pager import ="java.sql.*"%>
	<%
	String user=request.getParameter("userid");
	session.putValue("userid",user);
        String pwd=request.getParameter("pwd");
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String email= request.getParameter("email");
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tast","root","root");
	Statement st= con.createStatement();
	ResultSet rs;
	int i=st.executeUpdate("insert into users values("+user+","+pwd+","+fname+","+lname+","+email+")");
	out.println("Registered");
	%>
	<a href = "Login.html">Login</a><br/>
 </body>
</html>

