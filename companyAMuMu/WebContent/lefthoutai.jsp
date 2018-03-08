<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/global.css">
<link rel="stylesheet" type="text/css" href="css/houtai1.css">
</head>
<body>
<div id="manage_left">
		<ul><li onclick="change1()" style="cursor:wait;"><b style="font-size:20px;">系统管理</b></li></ul>
		<ul id="u1" style="display:none;">
			<li><img src="image/icon_arrow_r.gif" /><a target="right" href="addUsers.jsp">添加管理员</a></li>
			<li><img src="image/icon_arrow_r.gif" /><a target="right" href="${pageContext.request.contextPath}/FindUsers">用户管理</a></li>
		</ul>
		<ul><li onclick="change2()" style="cursor:wait;"><b style="font-size:20px;">新闻管理</b></li></ul>
		<ul id="u2" style="display:none;">
			<li><img src="image/icon_arrow_r.gif" /><a target="right" href="addNews.jsp">添加新闻</a></li>
			<li><img src="image/icon_arrow_r.gif" /><a target="right" href="${pageContext.request.contextPath}/FindNews">管理新闻</a></li>
		</ul>
		<ul><li onclick="change3()" style="cursor:wait;"><b style="font-size:20px;">商品管理</b></li></ul>
		<ul id="u3" style="display:none;">
			<li><img src="image/icon_arrow_r.gif" /><a target="right" href="addProduct.jsp">添加商品</a></li>
			<li><img src="image/icon_arrow_r.gif" /><a target="right" href="${pageContext.request.contextPath}/FindProduct">管理商品</a></li>
		</ul>
	</div>
	<div id="line"></div>
</body>
<script type="text/javascript" src="js/yin.js"></script>
</html>
