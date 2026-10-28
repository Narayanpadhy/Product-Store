package com.achyuta.product_envintory;

import java.io.Serializable;

@SuppressWarnings("serial")
public class AdminBean implements Serializable{

	private String userName,password,fname,lname,address,mailId,mobile;

	public AdminBean() {
		super();
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getAddress() {
		return address;
	}

	public String getMailId() {
		return mailId;
	}

	public String getMobile() {
		return mobile;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setMailId(String mailId) {
		this.mailId = mailId;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
}
