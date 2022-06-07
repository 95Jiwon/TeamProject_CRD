package Item;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class itemDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	
	public void getcon() {
		try {
			String dbURL="jdbc:mariadb://58.229.253.250:3306/student216";
			String dbID ="student216";
			String dbPassword ="1234!!";
			Class.forName("org.mariadb.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
