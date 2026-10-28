package com.achyuta.product_envintory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewProductDAO 
{
	public ArrayList<ProductBean> viewProducts(){
		
		ArrayList<ProductBean> al =new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnect.getConnection();
			PreparedStatement pstmt = con.prepareStatement("Select * from productstore");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {	
			ProductBean	beans = new ProductBean();
				
				beans.setProductCode(rs.getString(1));
				beans.setProductName(rs.getString(2));
				beans.setProductCompany(rs.getString(3));
				beans.setProductPrice(rs.getString(4));
				beans.setProductQuantity(rs.getString(5));
				al.add(beans);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return al;
	}
}
