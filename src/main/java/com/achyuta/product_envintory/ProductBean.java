package com.achyuta.product_envintory;

import java.io.Serializable;

@SuppressWarnings("serial")
public class ProductBean implements Serializable{

	private String productCode;
	private String productName;
	private String productCompany;
	private String productPrice;
	private String productQuantity;
	
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public void setProductCompany(String productCompany) {
		this.productCompany = productCompany;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}
	public ProductBean() {
		super();
	}
	public String getProductCode() {
		return productCode;
	}
	public String getProductName() {
		return productName;
	}
	public String getProductCompany() {
		return productCompany;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public String getProductQuantity() {
		return productQuantity;
	}
	
}
