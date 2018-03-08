<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>left</title>
<style>
#contery_left {
	width: 195px;
	height: 455px;
	background-color: rgb(244, 244, 244);
	float: left;
	}
</style>
</head>
<body>
	<div id="chat">
		<a href="">首页</a>><a href="">站内新闻</a>
	</div>
	<div id="back"></div>
	<div id="contery_left">
		<div id="contery_left_b2">
			<a href="${pageContext.request.contextPath }/NewsServlet?action=all"><img src="image/cg1_r1_c2.jpg" /></a>
			<a href="${pageContext.request.contextPath }/NewsServlet?action=all"><img src="image/cg1_r2_c2.jpg" /></a>
			<a href="shouBack.jsp"><img src="image/cg1_r4_c2.jpg" /></a>
			<a href="shouBack02.jsp"><img src="image/cg1_r6_c2.jpg" /></a>
		</div>
		<div id="contery_left_b1">
			<ul>
				<li><img src="image/cg1_r10_c1.jpg" /></li>
				<li><img src="image/cg5_55.jpg" />业务专线:010-88888888</li>
				<li><img src="image/tiao.jpg" /></li>
				<li><img src="image/cg5_55.jpg" />售后服务:010-66666666</li>
				<li><img src="image/tiao.jpg" /></li>
				<li><img src="image/cg5_55.jpg" />传&nbsp;&nbsp;真:010-12345678</li>
				<li><img src="image/tiao.jpg" /></li>
			</ul>
		</div>
	</div>
</body>
</html>