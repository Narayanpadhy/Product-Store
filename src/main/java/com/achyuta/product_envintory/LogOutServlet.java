package com.achyuta.product_envintory;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LogOut")
public class LogOutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		if(session==null) {
			req.getRequestDispatcher("AdminLogIn.html").forward(req, resp);
		}
		else {
			req.getRequestDispatcher("LogOut.jsp").forward(req, resp);
		}
	}
}
