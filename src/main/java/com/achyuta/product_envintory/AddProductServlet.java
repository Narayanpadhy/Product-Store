package com.achyuta.product_envintory;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/addProduct")
public class AddProductServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			HttpSession session = req.getSession(false);
		      if(session==null)
		      {
		    	 req.getRequestDispatcher("AdminLogIn.html").forward(req, resp); 
		      }
		      else
		      {
		    	 ProductBean bean = new ProductBean();
		  		bean.setProductCode(req.getParameter("pcode").trim());
		  		bean.setProductName(req.getParameter("pname").trim());
		  		bean.setProductCompany(req.getParameter("pcompany").trim());
		  		bean.setProductPrice(req.getParameter("pprice").trim());
		  		bean.setProductQuantity(req.getParameter("pqty").trim());
		  		int insertedRow = new AddProductDAO().insertProduct(bean);
		  		if(insertedRow>0) {
		    	  req.setAttribute("dataStored","Product inserted into DataBase successfully");
		    	  req.getRequestDispatcher("AddProduct.jsp").forward(req, resp);
		         }
		  		else
		  		{
		  			throw new RuntimeException("Product not added into DataBase");
		  		}
		    }
	}
}

