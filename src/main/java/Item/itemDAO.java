package Item;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Member.MemberBean;

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
	
	public void insertItem(itemBean ibean) {
		try {
			String SQL = "INSERT INTO MEMBER(name, price, salePrice, comment) VALUES(?,?,?,?)";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, ibean.getName());
			pstmt.setInt(2, ibean.getPrice());
			pstmt.setInt(3, ibean.getSalePrice());
			pstmt.setString(4, ibean.getComment());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
