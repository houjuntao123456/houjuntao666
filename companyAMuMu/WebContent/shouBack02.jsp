<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="top.jsp" %>
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
<link rel="stylesheet" type="text/css" href="css/contery.css">
</head>
<body>
<div id="contery">
	<div id="chat"><a href="">首页</a>><a href="">企业建设</a></div>
	<div id="back"></div>
	<div id="contery_left">
		<div id="contery_left_b2">
			<a href=""><img src="image/cg1_r1_c2.jpg" /></a>
			<a href=""><img src="image/cg1_r2_c2.jpg" /></a>
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
	<div id="contery_right">
		<div id="contery_right_top">诚信、勤奋、激情、团结、互助</div>
		<div id="contery_right_chat">
			<p class="p1">信息咨询,使众多用户能够利用网络资源为自身带来最大的利益。 
			公司自成立那天起，就秉承"诚信、创新、激情、勤奋、团结、互助"的经营理念,
			以其优秀的现代管理意识、快速的服务体系，充分利用现有资源，为用户提供了最好的商品与支持</p>
		</div>
	</div>
	<div style="clear:both;"></div>
	<div id="contery_button">
		
	</div>
</div>
</body>
</html>
