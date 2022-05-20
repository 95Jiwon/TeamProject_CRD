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
			String SQL = "INSERT INTO MEMBER(id,pass1,email,hobby,job,age,info) VALUE(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass1());
			pstmt.setString(3, mbean.getEmail());
			pstmt.setString(4, mbean.getTel());
			pstmt.setString(5, mbean.getHobby());
			pstmt.setString(6, mbean.getJob());
			pstmt.setString(7, mbean.getAge());
			pstmt.setString(8, mbean.getInfo());
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
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
				
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
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	public void modifyMember(MemberBean bean) {
		try {
			String SQL= "UPDATE MEMBER SET id=?,pass1=?,email=?,job=?,tel=? WHERE id=?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPass1());
			pstmt.setString(3, bean.getEmail());
			pstmt.setString(4, bean.getJob());
			pstmt.setString(5, bean.getTel());
			pstmt.setString(6, bean.getId());
			
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteMember(String id) {
		try {
			//String SQL = "DELETE FROM MEMBER WHERE id=?";
			String SQL = "UPDATE MEMBER SET deleteinfo=? WHERE id=?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, "N");
			pstmt.setString(2, id);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
