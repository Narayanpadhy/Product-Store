package com.achyuta.customer_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.achyuta.customer_bean.CustomerBean;
import com.achyuta.product_envintory.DBConnect;

public class LogInDAO {

	public CustomerBean userChecking(String userName,String password) {
		
		CustomerBean bean = null;
		try {
			Connection con = DBConnect.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from customer where username=? and password=?");
			pstmt.setString(1, userName);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				bean = new CustomerBean();
				bean.setUserName(rs.getString(1));
				bean.setPassword(rs.getString(2));
				bean.setFirstName(rs.getString(3));
				bean.setLastName(rs.getString(4));
				bean.setAddress(rs.getString(5));
				bean.setMailId(rs.getString(6));
				bean.setMobile(rs.getString(7));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
}
