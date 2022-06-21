package Item;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import Item.ItemBean;

public class ItemDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//DB접속
	public void getcon() {
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
	
	public int insertItem(ItemBean ibean) {
		int result =0;
		getcon();
		try {
			
			//기존에 item이 있는지 검사 하는 코드
			// SQL = String SQL = "SELECT itemName FROM item WHERE itemNAME"
			// if(getItemName.equlas(SQL){
			//
			// }
			//result =1;
			//없을 경우
			String SQL = "INSERT INTO item(itemNum,itemName,price,sellPrice,salePrice,itemComment,itemImage) VALUES(?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, ibean.getItemNum()); //상품번호
			pstmt.setString(2, ibean.getItemName()); //상품이름
			pstmt.setInt(3, ibean.getPrice()); // 가격
			pstmt.setInt(4, ibean.getSellPrice()); // 판매가
			pstmt.setInt(5, ibean.getSalePrice()); //할인가
			pstmt.setString(6, ibean.getItemComment()); //상품설명
			pstmt.setString(7, ibean.getItemImage()); //상품이미지
			pstmt.executeUpdate();
			result = 0;
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
			result = -1;
		}
		
		return result;
		
	}
	
	
	//데이터베이스에 데이터 전달
	public int upload(String itemNum, String itemName,int price, int sellPicce, int salePrice, String itemComment, String itemImage) {
		getcon();
		String sql = "insert into item values(?, ?, ?, ?, ?, ?, ?)";
		int result;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, itemNum);
			pstmt.setString(2, itemName);
			pstmt.setInt(3, price);
			pstmt.setInt(4, sellPicce);
			pstmt.setInt(5, salePrice);
			pstmt.setString(6, itemComment);
			pstmt.setString(7, itemComment); //글의 유효번호
			result = pstmt.executeUpdate();
			conn.close();
			
			return result;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	//
	public int join(ItemBean item) {
		  getcon();
		  String sql = "insert into item values(?, ?, ?, ?, ?, ?)";
		  try {
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setString(1, item.getItemName());
		    pstmt.setInt(2, item.getPrice());
		    pstmt.setInt(3, item.getSellPrice());
		    pstmt.setInt(4, item.getSalePrice());
		    pstmt.setString(5, item.getItemComment());
		    pstmt.setString(6, item.getItemImage());
		    
		    pstmt.executeUpdate();
		    conn.close();
		  }catch (Exception e) {
		 	e.printStackTrace();
		  }
		  return -1;
		}
	
	public int getAllCount() {
		getcon();
		int count = 0;
		try {
			String SQL = "select count(*) from board";
			
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt(1);
			}
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	public Vector<ItemBean> getTotalAllBoard(){
		Vector<ItemBean> v = new Vector<>();
		getcon();
		try {
			String SQL ="select * from (select A.*,(@rownum := @rownum +1) as Rnum  FROM "
					+ " (SELECT * from board ) AS A, "
					+ " (SELECT @rownum:=0) tmp ) B  "
					+ " ORDER BY num ASC";
			pstmt = conn.prepareStatement(SQL);			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ItemBean bean = new ItemBean();
				bean.setItemNum(rs.getInt(1));
				bean.setItemName(rs.getString(2));
				bean.setPrice(rs.getInt(3));
				bean.setSellPrice(rs.getInt(4));
				bean.setSalePrice(rs.getInt(5));
				bean.setItemComment(rs.getString(6));
				bean.setItemImage(rs.getString(7));
				bean.setReg_date(rs.getDate(8).toString());
				bean.setRef(rs.getInt(9));
				bean.setRe_stop(rs.getInt(10));
				bean.setRe_level(rs.getInt(11));
				bean.setReadcount(rs.getInt(12));
				bean.setContent(rs.getString(13));
				
				v.add(bean);
			}
			
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
	}
}
