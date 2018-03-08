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
 * Servlet implementation class UpdateProduct
 */
@WebServlet("/UpdateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProduct() {
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		Product product = new Product();
		product.setSerialNumber(request.getParameter("serialNumber"));
		product.setName(request.getParameter("name"));
		product.setBrand(request.getParameter("brand"));
		product.setModel(request.getParameter("model"));
		product.setPrice(Double.parseDouble(request.getParameter("price")));
		String picture = request.getParameter("picture");
		picture = picture.substring(picture.lastIndexOf("\\") + 1);
		product.setPicture(picture);
		product.setDescription(request.getParameter("description"));
		product.setProductID(Integer.parseInt(request.getParameter("productID")));
		
		ProductDAOimpl productDAO = new ProductDAOimpl();
		int rows=productDAO.updateProduct(product);
		if (rows>0) {
			response.sendRedirect("/Companys/FindProduct");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
