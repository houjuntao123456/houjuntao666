<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.amumu.companyamumu.entity.Users"%>
<%@page import="com.amumu.companyamumu.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	String param = request.getParameter("param");
	
	UserDAO userDAO = new UserDAO();
	// 判断用户输入信息是否为空
	if (param == null || userName == null || password == null) {
		response.sendRedirect("register.jsp");
	} else if (param != null && "login".equals(param)) { //登录操作
		// 根据用户名和密码查询数据库
		Users user = userDAO.findUser(userName, password);
		if (user != null) { // 判断当前用户是否存在	
			// 如果用户存在，把当前用户名保存到application中的List集合内
			List userList = (List) application.getAttribute("users");
			if (userList == null || userList.size() == 0) { // 针对第一个登录用户的操作
				userList = new ArrayList();
				userList.add(userName);
			} else { // 针对其他用户的操作
				boolean bool = true;
				for (int i = 0; i < userList.size(); i++) {
					if (userName.equals(userList.get(i).toString())) {
						bool = false;
						break;
					}
				}
				if (bool){
					userList.add(userName);
				}
			}
			//把当前用户的信息保存到session中
			session.setAttribute("user", user);
			application.setAttribute("users", userList);
			response.sendRedirect("main.jsp");
		} else { //如果用户不存在，给出提示后，返回到网站首页
			//response.sendRedirect("zhuce.jsp");
			out.print("<script type='text/javascript'>alert('用户名或密码错误，请重新登录。');location.replace('../denglu.jsp');</script>");
		}
	} else { //注册操作
		boolean ret = userDAO.findUser(userName);
		if(ret){
			out.print("<script type='text/javascript'>alert('此用户已经存在！');location.replace('../zhuce.jsp');</script>");
		}
		int count = userDAO.insertUser(userName, password, 0);
		if (count > 0) {
			out.print("<script type='text/javascript'>alert('注册成功，请登录。');location.replace('../denglu.jsp');</script>");
		} else {
			out.print("<script type='text/javascript'>alert('注册失败，请重新注册。');history.go(-1);</script>");
		}
	}
%>