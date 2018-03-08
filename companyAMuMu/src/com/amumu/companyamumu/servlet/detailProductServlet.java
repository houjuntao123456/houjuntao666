package com.amumu.companyamumu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amumu.companyamumu.dao.ProductDao;
import com.amumu.companyamumu.entity.Product;

/**
 * Servlet implementation class detailProductServlet
 */
@WebServlet("/detailProductServlet")
public class detailProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public detailProductServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取action参数
		String action = request.getParameter("action");
		// 创建商品数据库访问类对象
		ProductDao productDAO = new ProductDao();
		
		if (action.equals("getProductByID")) {
			// 获取productID参数
			String productID = request.getParameter("productID");
			// 根据商品ID查询商品对象
			Product products = productDAO.findProductByID(productID);
			// 封装到request作用域中
			request.setAttribute("products", products);
			// 转发到detailProduct.jsp页面
			request.getRequestDispatcher("/detailProduct.jsp").forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
