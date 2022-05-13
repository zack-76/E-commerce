package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
	
	private static Connection conn = null;
	

	public static Connection getConnectionne() throws ClassNotFoundException , SQLException {
		
		try {
		if(conn==null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-commerce","root","");
				//System.out.println("connected");
		}
		}catch(SQLException | ClassNotFoundException e) {e.printStackTrace();}
		
		return conn;
	}

}
