<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>商品管理</title>
<style>
	td{
		padding:10px 10px;
	}
</style>
</head>
<body>
<table  border="1" cellspacing="0" style="margin-left:200px;margin-top:50px;">
	<tr>
		<td colspan="7">商品管理</td>
	</tr>
	<tr>
		<td width="100px">商品编号</td>
		<td width="100px">商品名称</td>
		<td width="100px">商品商标</td>
		<td width="100px">商品型号</td>
		<td width="100px">商品价格</td>
		<td width="50px">修改</td>
		<td width="50px">删除</td>
	</tr>
	<c:forEach var="productsInfo" items="${requestScope.productsInfo }">
		<tr>
			<td>${productsInfo.serialNumber }</td>
			<td>${productsInfo.name }</td>
			<td>${productsInfo.brand }</td>
			<td>${productsInfo.model }</td>
			<td>${productsInfo.price }</td>
			<td><a href="${pageContext.request.contextPath}/FindPro?productID=${productsInfo.productID }">修改</a></td>
			<td><a href="${pageContext.request.contextPath}/DeleteProduct?productID=${productsInfo.productID }" onclick="return quit2()">删除</a></td>
		</tr>
	</c:forEach>
</table>
</body>
<script type="text/javascript" src="js/shanchu.js"></script>
</html>
