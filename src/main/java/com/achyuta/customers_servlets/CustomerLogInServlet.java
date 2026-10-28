package com.achyuta.customers_servlets;

import java.io.IOException;

import com.achyuta.customer_bean.CustomerBean;
import com.achyuta.customer_dao.LogInDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/login")
public class CustomerLogInServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userName = req.getParameter("uname");
		String password = req.getParameter("password");
		  CustomerBean userChecking = new LogInDAO().userChecking(userName, password);
		if(userChecking==null) {
			req.setAttribute("invalidmsg", "Invalid Credential");
			req.getRequestDispatcher("CustomerLogIn.html").forward(req, resp);
		}
		else
		{
			HttpSession session = req.getSession();
			session.setAttribute("valid", userChecking);
			req.getRequestDispatcher("CustomerHome.jsp").forward(req, resp);
		}
	}
}
