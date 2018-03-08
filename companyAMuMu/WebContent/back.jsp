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
		<form id="contery_right_login" action="<%=path %>/DoLogin" method="post">
			<div id="right_login1">管理员登录</div>
			<div id="right_login2">
				<div class="kuan"><span>您的账号：</span><input type="text" name="username" /></div><br>
				<div><span>您的密码：</span><input type="password" name="password" /></div>
			</div>
			<div id="right_login3"></div>
			<div id="right_login4">
				<input type="submit" value="登录" />
				<input type="reset" value="重置" />
			</div>
		</form>
	</div>
	
	
	<div style="clear:both;"></div>
	<div id="contery_button">
		
	</div>
</div>
</body>
</html>
