package model;
import java.sql.*;
public class OracleCon {
	
		public static Connection getCon()
		{
			Connection con=null;
			try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","str654321");
				} 
				  catch (Exception e) {
				  e.printStackTrace();
			}
			return con;
		}
		
}

