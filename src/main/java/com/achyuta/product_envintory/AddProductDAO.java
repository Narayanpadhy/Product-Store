package com.achyuta.product_envintory;
import java.sql.Connection;
import java.sql.PreparedStatement;
public class AddProductDAO {

	public int insertProduct(ProductBean bean) {
		int result=0;
		try {
			Connection con = DBConnect.getConnection();
			PreparedStatement pstmt = con.prepareStatement("insert into productstore values (?,?,?,?,?)");
			pstmt.setString(1,bean.getProductCode());
			pstmt.setString(2, bean.getProductName());
			pstmt.setString(3,bean.getProductCompany());
			pstmt.setString(4,bean.getProductPrice());
			pstmt.setString(5,bean.getProductQuantity());
			result = pstmt.executeUpdate();
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
}
