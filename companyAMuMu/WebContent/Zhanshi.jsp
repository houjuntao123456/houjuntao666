<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page
	import="java.util.*,com.amumu.companyamumu.dao.*,com.amumu.companyamumu.entity.*"%>
<html>
<link href="css/lianxi.css" rel="stylesheet" type="text/css" />
<body>
	<div class="box">
		<!-- 头部 -->
		<div class="box1">
			<div class="tou1"></div>
			<div>
				<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
					width="799" height="161" title="pinhong">
					<param name="movie" value="image/2.swf" />
					<param name="quality" value="high" />
					<embed src="image/2.swf" quality="high"
						pluginspage="http://www.macromedia.com/go/getflashplayer"
						type="application/x-shockwave-flash" width="799" height="161">
					</embed>
				</object>
			</div>
			<div class="tou1"></div>
			<div class="DH">
				<img src="image/d_r3_c1.jpg" class="dh1" /> <img
					src="image/top_red.jpg" class="dh1" /> <img
					src="image/top_red.jpg" class="dh1" /> <a href="IndexSewrvlet"><img
					src="image/d_r3_c5.jpg" class="dh1" /></a> <img
					src="image/top_red.jpg" class="dh1" /> <a
					href="ProductListServlet"><img src="image/d_r3_c7.jpg"
					name="image1" id="image1" class="dh1" /></a> <img
					src="image/top_red.jpg" class="dh1" /> <a href="showNewsList.jsp"><img
					src="image/d_r3_c8.jpg" class="dh1" /></a> <img
					src="image/top_red.jpg" class="dh1"> <a href="#"
					onclick="openChat()"><img src="image/d_r3_c9.jpg" class="dh1" /></a>
				<img src="image/top_red.jpg" class="dh1" /> <a
					href="messageBoard.jsp" target="_blank"><img
					src="image/d_r3_c10.jpg" class="dh1" /></a> <img
					src="image/top_red.jpg" class="dh1" /> <a
					href="checkAdminLogin.jsp"><img src="image/d_r3_c13.jpg"
					class="dh1" /></a> <img src="image/top_red.jpg" class="dh1" /> <img
					src="image/top_red.jpg" class="dh1" /> <img
					src="image/d_r3_c25.jpg" class="dh1" />

			</div>
			<div class="ym"></div>
			<div class="HT"></div>
		</div>
		<div class="box5">
			&nbsp;&nbsp; <a class=nav href="IndexSewrvlet">首页</a> <font class=nav>
				&gt; </font><a class=nav href="ProductListServlet">商品展示</a>
		</div>
		<!-- 侧边 -->
		<div class="box2">
			<div class="ce1">
				<ul class="ce3">
					<li><a href="${pageContext.request.contextPath}/NewsServlet?action=all"><img src="image/cg1_r1_c2.jpg"></a></li>
					<li><a href=""><img src="image/cg1_r2_c2.jpg"></a></li>
					<li><a href="${pageContext.request.contextPath}/shouBack.jsp"><img src="image/cg1_r4_c2.jpg"></a></li>
					<li><a href="${pageContext.request.contextPath}/shouBack02.jsp"><img src="image/cg1_r6_c2.jpg"></a></li>
				</ul>
				<div class="cx1"></div>
			</div>

			<div class="cx">
				<div class="">
					<img src="image/cg1_r10_c1.jpg">
				</div>
				<div class="cx1">
					<div class="cx4"></div>
					<div class="cx2">业务专线:010-88888888</div>
					<div class="cx3"></div>
				</div>
				<div class="cx1">
					<div class="cx4"></div>
					<div class="cx2">售后服务:010-66666666</div>
					<div class="cx3"></div>
				</div>
				<div class="cx1">
					<div class="cx4"></div>
					<div class="cx2">传&nbsp;&nbsp;真:010-12345678</div>
					<div class="cx3"></div>
				</div>
			</div>
		</div>
		<div class="shxi"></div>
		<!-- 中部 -->
		<div class="box3">
			<div class="zhongbu">
				<%-- 使用forEach标签遍历request作用域中的前5条商品列表 --%>
				<div
					style="overflow: auto; height: 500px; border: 0px solid red; width: 569px">
					<c:forEach var="products" items="${requestScope.products}">
						<div class="zhongbu">
							<div class="zhongbu1">
								<a
									href="${pageContext.request.contextPath}/detailProductServlet?productID=${products.productID}&action=getProductByID"><img
									src="image/${products.picture}" height="65"></a>
							</div>

							<table class="hui">
								<tr>
									<td class="e">产品名称</td>
									<td>${products.name}</td>
									<td class="e">产品品牌</td>
									<td>${products.brand}</td>
								</tr>
								<tr>
									<td class="e">产品型号</td>
									<td>${products.model}</td>
									<td class="e">产品价格</td>
									<td>${products.price}元</td>
								</tr>

							</table>

						</div>
					</c:forEach>
				</div>
			</div>

		</div>





		<!-- 底部 -->
		<div class="box4"></div>
</body>
</HTML>
