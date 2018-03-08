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
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/UpdateProduct" method="post">
		<table border="1" cellspacing="0" style="margin-left:200px;margin-top:50px;">
				<input type="hidden" name="productID" value="${requestScope.produsInfo.productID }" />
			<tr>
				<th>修改商品信息</th>
			</tr>
			<tr>
				<td>商品编号（系列）：</td>
				<td><input type="text" name="serialNumber" value="${requestScope.produsInfo.serialNumber }" /></td>
			</tr>
			<tr>
				<td>商品名称：</td>
				<td><input type="text" name="name" value="${requestScope.produsInfo.name }" /></td>
			</tr>
			<tr>
				<td>商品商标：</td>
				<td><input type="text" name="brand" value="${requestScope.produsInfo.brand }" /></td>
			</tr>
			<tr>
				<td>商品型号：</td>
				<td><input type="text" name="model" value="${requestScope.produsInfo.model }" /></td>
			</tr>
			<tr>
				<td>商品价格：</td>
				<td><input type="text" name="price" value="${requestScope.produsInfo.price }" /></td>
			</tr>
			<tr>
				<td>商品图片：</td>
				<td><input type="file" name="picture" value="${requestScope.produsInfo.picture }" /></td>
			</tr>
			<tr>
				<td>商品介绍：</td>
				<td><textarea name='description' cols='80' rows='6' value=${requestScope.produsInfo.description }></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
