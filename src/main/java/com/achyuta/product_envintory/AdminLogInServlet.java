package com.achyuta.product_envintory;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Admin")
public class AdminLogInServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	     
		String adminUserName = req.getParameter("adminUserName");
		String adminPassword = req.getParameter("adminPassword");
		AdminBean checkAdminData = new AdminLogInDAO().checkUser(adminUserName, adminPassword);
		if(checkAdminData==null)
		{
			
			req.getRequestDispatcher("AdminLogIn.html").forward(req, resp);
		}
		else
		{
			HttpSession session = req.getSession();
			session.setAttribute("adminData", checkAdminData);
			req.getRequestDispatcher("AdminHome.jsp").forward(req, resp);
		}
	}
}
