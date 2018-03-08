package com.amumu.companyamumu.servlet;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amumu.companyamumu.dao.messageBoardDAO;
import com.amumu.companyamumu.entity.messageBoard;


/**
 * Servlet implementation class newmessage
 */
@WebServlet("/newmessage")
public class newmessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newmessage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置请求字码
		request.setCharacterEncoding("utf-8");
		
		//获取用户输入内容
		String xm = request.getParameter("xm");
		String bt = request.getParameter("bt");
		String nr =request.getParameter("nr");
		String writeDate=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(0));
		//封装到集�?
	    messageBoard mBoard =new messageBoard();
		mBoard.setWriter(xm);
		mBoard.setTitle(bt);
		mBoard.setContent(nr);
		mBoard.setWriteDate(writeDate);
		//实例�?
		messageBoardDAO mDao =new messageBoardDAO();
		int count = mDao.zj(mBoard);
		if (count>0) {
			response.sendRedirect("message");
		}else{
			System.out.println("失败");
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
