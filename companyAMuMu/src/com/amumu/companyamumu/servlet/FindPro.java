package com.amumu.companyamumu.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.amumu.companyamumu.dao.ProductDAOimpl;
import com.amumu.companyamumu.entity.Product;



/**
 * Servlet implementation class FindPro
 */
@WebServlet("/FindPro")
public class FindPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPro() {
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/charset=utf-8");
			
			String productID = request.getParameter("productID");
			ProductDAOimpl productDAO = new ProductDAOimpl();
			Product produs = productDAO.FindPro(productID);
			
			
			request.setAttribute("produsInfo", produs);
			request.getRequestDispatcher("updateProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
