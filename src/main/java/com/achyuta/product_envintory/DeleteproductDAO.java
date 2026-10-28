package com.achyuta.product_envintory;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteproductDAO {

	public int deleteProduct(String productCode) {
		int result=0;
		try {
			Connection con = DBConnect.getConnection();
			PreparedStatement pstmt = con.prepareStatement("delete from productstore where pcode=?");
			pstmt.setString(1, productCode);
			result = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			
		}
		return result;
	}
}
