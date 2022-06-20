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
			String SQL = "SELECT * FROM item WHERE searchkey";
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CategoryBean bean = new CategoryBean();
				bean.setItemName(rs.getString(1));
				bean.setSalePrice(rs.getString(2));
				bean.setItemImage(rs.getString(3));
				
				
//				bean.setId(rs.getString(1));
//				bean.setPass1(rs.getString(2));
//				bean.setPass2(rs.getString(3));
//				bean.setName(rs.getString(4));
//				bean.setAddress(rs.getString(5));
//				bean.setTel(rs.getString(6));
//				bean.setPhone(rs.getString(7));
//				bean.setEmail(rs.getString(8));
				
				v.add(bean);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
	}
}
