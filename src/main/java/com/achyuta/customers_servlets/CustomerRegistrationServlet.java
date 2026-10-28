package com.achyuta.customers_servlets;

import java.io.IOException;

import com.achyuta.customer_bean.CustomerBean;
import com.achyuta.customer_dao.RegistrationDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
@WebServlet("/register")
public class CustomerRegistrationServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		CustomerBean customerBean = new CustomerBean();
		customerBean.setUserName(req.getParameter("uname"));
		customerBean.setPassword(req.getParameter("password"));
		customerBean.setFirstName(req.getParameter("fname"));
		customerBean.setLastName(req.getParameter("lname"));
		customerBean.setAddress(req.getParameter("address"));
		customerBean.setMailId(req.getParameter("mail"));
		customerBean.setMobile(req.getParameter("phone"));
		int row = new RegistrationDAO().insertCustomerData(customerBean);
		if(row > 0) {
			System.out.println("insert");
			req.getRequestDispatcher("CustomerLogIn.html").forward(req, resp);
		}
		else {
			req.setAttribute("msg", "Your Details not inserted into the DataBase");
			req.getRequestDispatcher("Error.jsp");
		}
	}
}
