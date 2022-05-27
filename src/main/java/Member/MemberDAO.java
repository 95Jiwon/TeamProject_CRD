package Member;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

import java.util.Vector;

public class MemberDAO {

	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	public MemberDAO() {

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
	
	public void insertMember(MemberBean mbean) {
		try {
			String SQL = "INSERT INTO MEMBER(id,pass1,pass2,name,address,tel,phone,email) VALUES(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass1());
			pstmt.setString(3, mbean.getPass2());
			pstmt.setString(4, mbean.getName());
			pstmt.setString(5, mbean.getAddress());
			pstmt.setString(6, mbean.getTel());
			pstmt.setString(7, mbean.getPhone());
			pstmt.setString(8, mbean.getEmail());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public Vector<MemberBean> allSelectMember(){

		Vector<MemberBean> v = new Vector<>();
		try {
			String SQL = "SELECT * FROM MEMBER";
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberBean bean = new MemberBean();
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setPass2(rs.getString(3));
				bean.setName(rs.getString(4));
				bean.setAddress(rs.getString(5));
				bean.setTel(rs.getString(6));
				bean.setPhone(rs.getString(7));
				bean.setEmail(rs.getString(8));
				
				v.add(bean);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
	}

	public MemberBean oneSelectMember(String id) {
		MemberBean bean = new MemberBean();
		try {
			String SQL = "SELECT * FROM MEMBER WHERE id=?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setPass2(rs.getString(3));
				bean.setName(rs.getString(4));
				bean.setAddress(rs.getString(5));
				bean.setTel(rs.getString(6));
				bean.setPhone(rs.getString(7));
				bean.setEmail(rs.getString(8));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}

	public void modifyMember(MemberBean bean) {
		try {
			String SQL= "UPDATE MEMBER SET id=?,pass1=?,pass2=?,name=?,address=?,tel=?,phone=?,email=? WHERE id=?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPass1());
			pstmt.setString(3, bean.getPass2());
			pstmt.setString(4, bean.getName());
			pstmt.setString(5, bean.getAddress());
			pstmt.setString(6, bean.getTel());
			pstmt.setString(7, bean.getPhone());
			pstmt.setString(8, bean.getEmail());
			pstmt.setString(9, bean.getId());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

//	public void deleteMember(String id) {
//		try {
//			//String SQL = "DELETE FROM MEMBER WHERE id=?";
//			String SQL = "UPDATE MEMBER SET deleteinfo=? WHERE id=?";
//			pstmt = conn.prepareStatement(SQL);
//			pstmt.setString(1, "N");
//			pstmt.setString(2, id);
//			pstmt.executeUpdate();			
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//	}

}