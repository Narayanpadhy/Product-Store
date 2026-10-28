package com.achyuta.product_envintory;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/update")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession(false);
		if(session==null) {
			req.setAttribute("msg","Session expired please login");
			req.getRequestDispatcher("AdminLogIn.html").forward(req, resp);
		}
		else {
			  String productCode = req.getParameter("productCode");
			  ArrayList<ProductBean> productList =( ArrayList<ProductBean>) session.getAttribute("listOfProduct");
			 
			  Iterator<ProductBean> iterator = productList.iterator();
			  ProductBean bean = null;
			  while(iterator.hasNext()) {
				  ProductBean next = iterator.next();
				  if(productCode.equals(next.getProductCode())) {
					  bean=next;
					  break;
				  }
			  }
			  bean.setProductPrice(req.getParameter("productPrice"));
			  bean.setProductQuantity(req.getParameter("productQuantity"));
			  int row = new UpdateProductsDAO().updateProducts(bean);
			  if(row>0) {
				  req.setAttribute("update","Product updated successfully");
				  req.getRequestDispatcher("UpdateProduct.jsp").forward(req, resp);
			  }
			  else {
				  req.setAttribute("msg", "Product Can't updated");
				  req.getRequestDispatcher("Error.jsp").forward(req, resp);
			  }
		
		}
	}
}
