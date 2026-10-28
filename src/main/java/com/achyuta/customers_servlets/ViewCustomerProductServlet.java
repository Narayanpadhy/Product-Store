package com.achyuta.customers_servlets;

import java.io.IOException;
import java.util.ArrayList;

import com.achyuta.product_envintory.ProductBean;
import com.achyuta.product_envintory.ViewProductDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/viewProductss")
public class ViewCustomerProductServlet extends HttpServlet {

	   @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		   HttpSession session = req.getSession(false);
		   if(session==null) {
			   req.getRequestDispatcher("CustomerLogIn.html").forward(req, resp);
		   }
		   else {
		   ArrayList<ProductBean> viewProducts = new ViewProductDAO().viewProducts();
		   if(viewProducts==null) {
			   
		   }
		   else {
			   
			   session.setAttribute("list", viewProducts);
			   req.getRequestDispatcher("ViewCustomerProducts.jsp").forward(req, resp);
		   }
		   }
	}
}
