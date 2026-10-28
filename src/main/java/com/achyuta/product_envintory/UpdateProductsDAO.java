package com.achyuta.product_envintory;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductsDAO {

	public int updateProducts(ProductBean bean) {
		
		int result =0;
		try {
			Connection con = DBConnect.getConnection();
			PreparedStatement pstmt = con.prepareStatement("update productstore set pprice=? ,pqty=? where pcode=?");
			pstmt.setString(1, bean.getProductPrice());
			pstmt.setString(2, bean.getProductQuantity());
			pstmt.setString(3, bean.getProductCode());
			result = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
}
