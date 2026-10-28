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

@SuppressWarnings("serial")
@WebServlet("/edit")
public class EditProductServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if(session == null) {
			req.setAttribute("msg", "Session expired please login");
			req.getRequestDispatcher("Error.jsp").forward(req, resp);
		}
		else {
			String productCode = req.getParameter("productcode");
			   @SuppressWarnings("unchecked")
			   ArrayList<ProductBean> listOfProducts =(ArrayList<ProductBean>) session.getAttribute("listOfProduct");
			   if(listOfProducts==null) {
				   req.setAttribute("msg", "No product available.");
				   req.getRequestDispatcher("Error.jsp").forward(req, resp);
				   return;
			   }
			   ProductBean bean = null;
			   Iterator<ProductBean> iterator = listOfProducts.iterator();
			   while(iterator.hasNext()) {
				   bean = iterator.next();
				   if(productCode.equals(bean.getProductCode())) {
					   break;
				   }
			   }
			  if(bean==null) {
				  req.setAttribute("msg","No record found in this"+productCode+" product");
				  req.getRequestDispatcher("Error.jsp").forward(req, resp);
				  return;
			  }
			  req.setAttribute("matchedProduct", bean);
			  req.getRequestDispatcher("EditProduct.jsp").forward(req, resp);
		}
	}
	
}
