package Category;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.util.Vector;

import Member.MemberBean;


public class CategoryDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	public CategoryDAO() {

		try {
			String dbURL = "jdbc:mariadb://58.229.253.250:3306/student216";
			String dbID = "student216";
			String dbPassword = "1234!!";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public Vector<CategoryBean> findSearch(String searchkey){
		
		Vector<CategoryBean> v = new Vector<>();
		try {
			String SQL = "SELECT itemName,price,itemImage FROM item WHERE itemName LIKE ?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, searchkey);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CategoryBean bean = new CategoryBean();
				bean.setItemName(rs.getString(1));
				bean.setSalePrice(rs.getString(2));
				bean.setItemImage(rs.getString(3));
				
				v.add(bean);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
	}
}
