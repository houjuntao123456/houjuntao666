<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.amumu.companyamumu.entity.News"%>
<%@page import="com.amumu.companyamumu.dao.NewsDAO"%>
<%
	String newsID = request.getParameter("newsID");
	NewsDAO newsDAO = new NewsDAO();
	News news = newsDAO.findNewsByID(newsID);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>新闻信息</title>
</head>
<body>
<div id="contery_right">
	<div id="contery_right_top">
		<p><%=news.getTitle() %></p>
	</div>
	<div id="contery_right_chat">
		<p id="contery_right_text"><%=news.getContent() %></p>
		<p id="contery_right_img"><img src="image/n10.jpg"></p>
		<p id="contery_right_time"><%=news.getWriterDate() %></p>
	</div>
</div>
</body>
</html>