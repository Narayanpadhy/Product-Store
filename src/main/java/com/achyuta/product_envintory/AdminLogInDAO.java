package com.achyuta.product_envintory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLogInDAO 
{
	  public AdminBean checkUser(String userName,String password)
	  {
		  AdminBean bean = null;
		  try {
			  Connection con = DBConnect.getConnection();
			  PreparedStatement pstmt = con.prepareStatement("select * from admin where USERNAME =? and PASSWORD =?");
			  pstmt.setString(1,userName);
			  pstmt.setString(2, password);
			  ResultSet rs = pstmt.executeQuery();
			  while(rs.next())
			  {
				  bean = new AdminBean();
				  bean.setUserName(rs.getString(1));
				  bean.setPassword(rs.getString(2));
				  bean.setFname(rs.getString(3));
				  bean.setLname(rs.getString(4));
				  bean.setAddress(rs.getString(5));
				  bean.setMailId(rs.getString(6));
				  bean.setMobile(rs.getString(7));			  
			  }
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		  return bean;
	  }
}
