<!DOCTYPE html>
<html>
	<head>
		<title>jspfile</title>
	</head>
	<body>
		<%@ page import ="java.sql.*"%>
		<%@ page import = "javax.sql.*" %>
		<%
		String userid=request.getParameter("usr");
		session.putValue("userid",userid);
		String pwd=request.getParameter("pwd");
		Class.forName("com.musql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
		Statement st= con.createStatement();
		ResultSet rs= st.executeQuery("select * from users where userid="+userid+"");
		if(rs.next())
		{ if(rs.getString(2).equals(pwd))
		{out.println("Welcome"+userid);}
		else
		{ out.println("Invalid password try again");}
		}
		else
		%>
		< a href = "reg.html">//just for reference purpose
	</body>
</html>


