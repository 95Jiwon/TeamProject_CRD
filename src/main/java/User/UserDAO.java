package User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
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
	
	public int loginOK(String id,String pass1) {
		int result =0;
		getcon();
		try {
			String SQL = "SELECT * FROM MEMBER WHERE id=? AND pass1=?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			pstmt.setString(2, pass1);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;  // 로그인 성공
			}else {
				result = 0;  // 로그인 실패
			}
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int loginAuthOk(String id,String pass1) {
		int result = 0;
		getcon();
		try {
			String SQL = "SELECT * FROM MEMBER WHERE id=?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String passwd = rs.getString("pass1");  //암호화된 비밀번호 읽어오기
				
				String SQL1 = "SELECT pass1(?)";
				pstmt=conn.prepareStatement(SQL1);
				pstmt.setString(1,pass1 );
				rs =pstmt.executeQuery();
				if(rs.next()) {
					String passwdAuth = rs.getString(1);
					if(passwd.equals(passwdAuth)) {
						result = 1;
					}else {
						result = 0;
					}
				}
			}else {
				result = 0;
			}
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int loginAuth2Ok(String id,String pass1) {
		int result=0;
		int auth=0;
		getcon();
		try {
			String SQL ="SELECT * FROM MEMBER WHERE id=? AND pass1=?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			pstmt.setString(2, pass1);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
				auth = rs.getInt("auth");
				//auth권한 검사
				//1일경우 ==10
				if(auth == 1) {
					result = 10;
				}else {
					result = 1;
				}
				
			}else {
				result = 0;
			}
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
