package Product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class ProductDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	
	public void getcon() {
		try {
			String dbURL="jdbc:mariadb://58.229.253.250:3306/student214";
			String dbID ="student214";
			String dbPassword ="1234!!";
			Class.forName("org.mariadb.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public List<ProductBean> selectAllProducts(String description){
		//카테고리별 출력
		String sql = "select * from product where productSerial = ? ";
		List<ProductVo> list = new ArrayList<ProductVo>();
		
		
		try {
			conn = new Application().getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, serial);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				ProductVo vo = new ProductVo();
				vo.setProductSerial(rs.getInt("productSerial"));
				vo.setProductName(rs.getString("productName"));
				vo.setProductCompany(rs.getString("productCompany"));
				vo.setProductPrice(rs.getInt("productPrice));
				list.add(vo);
				
				
				
			}
		
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Application.close(conn, ps, rs);
		}
		return list;
	}
	
	
	
	
	
}
