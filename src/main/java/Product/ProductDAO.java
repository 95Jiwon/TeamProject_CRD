package Product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	public List<ProductVo> selectAllProducts(String description){
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
				vo.setProduct_serial(rs.getInt("product_serial"));
				vo.setProduct_name(rs.getString("product_name"));
				vo.setProduct_price(rs.getInt("product_price"));
				vo.setProduct_picture_url(rs.getString("product_picture_url"));
				vo.setProduct_description(rs.getString("product_description"));
				vo.setProduct_link_url(rs.getString("product_link_url"));
				vo.setProduct_youtubeUrl(rs.getString("product_youtubeUrl"));
				vo.setProduct_pdInfo(rs.getString("product_pdInfo"));
				vo.setProduct_color(rs.getString("product_color"));
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
