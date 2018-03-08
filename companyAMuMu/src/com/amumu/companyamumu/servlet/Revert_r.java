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

import com.amumu.companyamumu.dao.RevertDao;
import com.amumu.companyamumu.dao.messageBoardDAO;
import com.amumu.companyamumu.entity.Message;
import com.amumu.companyamumu.entity.Revert;
import com.amumu.companyamumu.entity.messageBoard;


/**
 * Servlet implementation class revert
 */
@WebServlet("/revert")
public class Revert_r extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Revert_r() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 设置请求字码
		request.setCharacterEncoding("utf-8");

		// 获取action参数
		String action = request.getParameter("action");

		// 创建留言簿数据库访问类对象（回复留言）
		messageBoardDAO bMessageBoardDAO = new messageBoardDAO();
		if (action.equals("find")) {
			// 创建留言簿数据库访问类对象（回复留言）
			RevertDao rDao = new RevertDao();
			// 创建空集合和接收
			List<Revert> reverts = null;
			// 获取 messageID参数
			String messageID = request.getParameter("messageID");
			// 跟据留言簿id查询留言簿对象
			reverts = rDao.selectRevertByMessageID(messageID);
			// 把对象放入request作用域中
			request.setAttribute("reverts", reverts);

			// 创建空集合和接收
			messageBoard mb = null;
			// 跟据留言簿id查询留言簿对象
			mb = bMessageBoardDAO.xxmessageID(messageID);
			// 把对象放入request作用域中
			request.setAttribute("mb", mb);
			// 把messageID放入request作用域中
			request.setAttribute("messageID", messageID);

			// 转发到revert.jsp页面
			request.getRequestDispatcher("/revert.jsp").forward(request, response);
		} else if (action.equals("update")) {
			// 获取用户输入内容
			// 获取 messageID参数
			String messageID = request.getParameter("messageID");
			String xm = request.getParameter("xma");
			String nr = request.getParameter("nra");
			String writeDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(0));
			// 封装到集合

			Revert ww = new Revert();
			ww.setMessageID(Integer.parseInt(messageID));
			ww.setContent(nr);
			ww.setWriter(xm);
			ww.setWriteDate(writeDate);
			// 根据messageID更新message表的数据
			bMessageBoardDAO.Update(messageID);

			// 实例化
			RevertDao revertDAO = new RevertDao();
			int count = revertDAO.insertRevert(ww);
			if (count > 0) {
				response.sendRedirect("message");
			} else {
				System.out.println("失败");
			}
		}

		//

		//
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
