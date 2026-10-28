package com.achyuta.customers_servlets;
import java.io.IOException;
import com.achyuta.customer_dao.BuyProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/buyitem")
public class UpdateProductServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if(session==null) {
		  req.getRequestDispatcher("CustomerLogIn.html").forward(req, resp);
		}
		else {
		String pCode = req.getParameter("code");
		int requiredProduct =Integer.parseInt( req.getParameter("reqd"));
		int row = new BuyProductDAO().updateProductData(pCode, requiredProduct);
		if(row>0) {
		   double price =Double.parseDouble( req.getParameter("price"));
		   double totalPrice=price*requiredProduct;
		   req.setAttribute("totalprice", totalPrice);
		   req.getRequestDispatcher("OrderConfirmed.jsp").forward(req, resp);
		}
		else {
			req.getRequestDispatcher("ViewCustomerProducts.jsp").forward(req, resp);
		}
		}
	}
}
