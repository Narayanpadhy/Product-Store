package com.achyuta.customers_servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import com.achyuta.product_envintory.ProductBean;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/buy")
public class BuyProductServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		if(session == null) {
			req.getRequestDispatcher("CustomerLogIn.html").forward(req, resp);
		}
		else {
			String pCode = req.getParameter("pcode");
			ArrayList<ProductBean> al=(ArrayList<ProductBean>) session.getAttribute("list");
			if(al==null) {
				System.out.println("null");
			}
			else {
				Iterator<ProductBean> it = al.iterator();
				ProductBean bean = null;
				while(it.hasNext()) {
					bean = it.next();
					if(pCode.equals(bean.getProductCode())) {
						break;
					}
				}
				if(bean==null) {
					System.out.println("null");
				}
				else {
					req.setAttribute("buy", bean);
					req.getRequestDispatcher("BuyProduct.jsp").forward(req, resp);
				}
			}
		}
	}
}
