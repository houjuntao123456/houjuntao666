package com.amumu.companyamumu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amumu.companyamumu.dao.BackDAOimpl;
import com.amumu.companyamumu.entity.Users;

/**
 * Servlet implementation class AddUsers
 */
@WebServlet("/AddUsers")
public class AddUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUsers() {

        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out =response.getWriter();
		Users users = new Users();
		users.setUsername(request.getParameter("addName"));
		users.setPassword(request.getParameter("password"));
		users.setStatus(1);
		
		BackDAOimpl backDAO = new BackDAOimpl();
		int rows = backDAO.add(users);
		if (rows>0) {
			response.sendRedirect("addUsers.jsp");
		}else {
			out.println("<script type='text/javascript'>alert('ÃÌº” ß∞‹°£');location.replace('addUsers.jsp');</script>");
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
