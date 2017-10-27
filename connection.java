import java.sql.*;

class MysqlCon{
	public static void main(String arg[]){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriveManager.getConnection("jdbc:mysql://localhost/test,"root","root");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from emp");
			while(rs.next())
				System.out.orintln(rs.getInt(1)+""+rs.getString(2)+""+rs.getString(3));
			con.close();
		}
		catch (Exception e){System.out.println(e);
		}
	}
}
