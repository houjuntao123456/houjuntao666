package com.amumu.companyamumu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.amumu.companyamumu.dao.NewsDaowlm;

import com.amumu.companyamumu.dao.ProductDaowlm;
import com.amumu.companyamumu.entity.News;
import com.amumu.companyamumu.entity.Product;


/**
 * Servlet implementation class IndexSewrvlet
 */
@WebServlet("/IndexSewrvlet")
public class IndexSewrvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexSewrvlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//创建新闻数据库访问类
		NewsDaowlm newsDao = new NewsDaowlm();
		
		List<News>news= newsDao.findNews();
		
		request.setAttribute("news", news);
		
		
		ProductDaowlm productDao = new ProductDaowlm();
		
		List<Product>products = productDao.findAllProduct();
		
		request.setAttribute("products", products);
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
