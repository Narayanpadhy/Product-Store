package com.achyuta.product_envintory;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/viewProduct")
public class ViewProductServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession(false);
		if(session==null) {
			req.setAttribute("msg", "Session expired..");
			req.getRequestDispatcher("AdminLogIn.html").forward(req, resp);
		}
		else {
			ProductBean bean = new ProductBean();
			
			ArrayList<ProductBean> viewProducts = new ViewProductDAO().viewProducts();
			if(viewProducts==null) {
				req.setAttribute("msg","No product available");
				req.getRequestDispatcher("Error.jsp").forward(req, resp);
			}
			else {
				System.out.println(viewProducts);
				session.setAttribute("listOfProduct", viewProducts);
				req.getRequestDispatcher("ViewProduct.jsp").forward(req, resp);
			}
		}
	}
}
