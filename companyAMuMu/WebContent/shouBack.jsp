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
		<div id="contery_right_top">态度决定一切，沟通解决一切</div>
		<div id="contery_right_chat">
			<p class="p1">凡在本公司购买的商品，保证七天内无条件退、换商品；如有质量问题保证在一个月内换货，三个月内免费维修</p>
			<p class="p1">保修期内的维修服务： 此类商品所承诺的免费服务期内,您所购货物出现故障时,
			可拨打售后服务免费热线电话进行报修.我们将会在下一工作日或您指定的日期(法定节假日除外)提供免费服务.
			如损坏零件不属于保修范围之内,仅收取零件的成本费用,并进行更换. 6.2保修期外的维修服务: 
			对您购买的,但已处于保修期外的商品,我们将按保修期外维修服务标准向您提供服务,对于保修期外的维修,
			您需要承担的费用,包括维修所更换的零配件成本,维修费用;如果您需要上门服务,不定期需承担工程师现场维修的上门服务费. 。</p>
		</div>
	</div>
	<div style="clear:both;"></div>
	<div id="contery_button">
		
	</div>
</div>
</body>
</html>
