package com.amumu.companyamumu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amumu.companyamumu.dao.NewsDAO;


/**
 * Servlet implementation class NewsServlet
 */
@WebServlet("/NewsServlet")
public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		String action = request.getParameter("action");
		if (action.equals("all")) {
			int pageNum = 1;
			int pageSize = NewsDAO.PAGE_NUM;
			String paramPage = request.getParameter("page");
			if (paramPage != null) {
				pageNum = Integer.parseInt(paramPage);
			}

			NewsDAO newsDao = new NewsDAO();

			List newsList = newsDao.showNewsForPage(pageNum);

			int prePageNum = pageNum;
			int nextPageNum = pageNum;
			if (newsList.size() == pageSize)
				nextPageNum = pageNum + 1;
			if (pageNum > 1)
				prePageNum = pageNum - 1;
			request.setAttribute("prePageNum", prePageNum);
			request.setAttribute("nextPageNum", nextPageNum);
			request.setAttribute("newsList", newsList);
			request.getRequestDispatcher("/showNewsList.jsp").forward(request, response);
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
