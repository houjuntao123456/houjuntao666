package com.amumu.companyamumu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amumu.companyamumu.dao.BackDAOimpl;
import com.amumu.companyamumu.entity.Users;



/**
 * Servlet implementation class DoLogin
 */
@WebServlet("/DoLogin")
public class DoLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoLogin() {

        // TODO Auto-generated constructor stub
    }

	/**
	 * @param username 
	 * @param password 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		Users users = null;
		
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		
		BackDAOimpl backDAO = new BackDAOimpl();
		users = backDAO.doLogin(name, pwd);
		
		HttpSession session=request.getSession();
		
		if (users==null) {
			out.println("<script type='text/javascript'>alert('用户名或密码错误');history.go(-1);</script>");
			
		}else {
			if (users.getStatus() == 1) {
				//request.setAttribute("userinfo", users);
				//request.getRequestDispatcher("/Xiugai.jsp").forward(request, response);
				
				session.setAttribute("userinfo", users);
				response.sendRedirect("houTai.jsp");
			}else {
				out.print("<script type='text/javascript'>alert('您不是管理员，登陆失败');history.go(-1);</script>");
			}
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
