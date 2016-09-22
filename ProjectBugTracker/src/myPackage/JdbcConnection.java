
package myPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Servlet implementation class jdbcConnection
 */
	
	public class JdbcConnection {

		 static final String url="jdbc:mysql://localhost:3306/test";
		 static final String JdbcDriver="com.mysql.jdbc.Driver";
	   
		public static Connection getConnectionString() {
			Connection conn = null;
			try {
				Class.forName(JdbcDriver);
				System.out.println("Connecting to database...");
				conn = DriverManager.getConnection(url,"root","admin");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return conn;
		}
	   
	   public static void main(String[] args) {

}
	}
