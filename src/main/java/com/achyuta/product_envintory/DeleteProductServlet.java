package com.achyuta.product_envintory;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/delete")
public class DeleteProductServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if(session==null) {
			req.getRequestDispatcher("ViewProduct.jsp").forward(req, resp);
		}
		else {
		String productCode = req.getParameter("productcode");
		int row = new DeleteproductDAO().deleteProduct(productCode);
		if(row>0) {
			req.setAttribute("delete","Product Deleted !!!");
			req.getRequestDispatcher("DeleteProduct.jsp").forward(req, resp);
		}
		else {
			req.setAttribute("msg", "Product not deleted!");
			req.getRequestDispatcher("Error.jsp").forward(req, resp);
		}
		}
		
	}
}
