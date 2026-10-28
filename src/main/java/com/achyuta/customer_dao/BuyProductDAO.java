package com.achyuta.customer_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.achyuta.product_envintory.DBConnect;
public class BuyProductDAO  {

	public int updateProductData(String pcode,int qty) {
		int result=0;
		
		try {
			
			Connection con = DBConnect.getConnection();
			PreparedStatement pstmt = con.prepareStatement("update productstore set pqty=pqty-? where pcode=?");
			pstmt.setInt(1,qty);
			pstmt.setString(2, pcode);
			result = pstmt.executeUpdate();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
