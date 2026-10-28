package com.achyuta.customer_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.achyuta.customer_bean.CustomerBean;
import com.achyuta.product_envintory.DBConnect;

public class RegistrationDAO {

	  public int insertCustomerData(CustomerBean bean) {
		  int result=0;
		  
		  try {
			  
			  Connection con = DBConnect.getConnection();
			  PreparedStatement pstmt = con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
			  pstmt.setString(1, bean.getUserName());
			  pstmt.setString(2, bean.getPassword());
			  pstmt.setString(3, bean.getFirstName());
			  pstmt.setString(4, bean.getLastName());
			  pstmt.setString(5,bean.getAddress());
			  pstmt.setString(6, bean.getMailId());
			  pstmt.setString(7, bean.getMobile());
			  result = pstmt.executeUpdate();
			  
		  }
		  catch(Exception e) {
			  e.printStackTrace();
		  }
		  return result;
	  }
}
