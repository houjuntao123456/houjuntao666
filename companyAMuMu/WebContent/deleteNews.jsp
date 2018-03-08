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
<title>新闻管理</title>
</head>
<body>
	<table border="1" cellspacing="0" style="margin-left:200px;margin-top:50px;">
		<tr>
			<td colspan="3">新闻管理</td>
		</tr>
		<tr>
			<th width="300px;">新闻标题</th>
			<th width="200px;">新闻发布时间</th>
			<th width="100px;">删除</th>
		</tr>
		<c:forEach var="newsInfo" items="${requestScope.newsInfo }" >
			<tr>
				<td>${newsInfo.title }</td>
				<td>${newsInfo.writerDate }</td>
				<td><a href="${pageContext.request.contextPath }/DeleteNews?newsID=${newsInfo.newsID }" onclick="return quit2()">删除</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
<script type="text/javascript" src="js/shanchu.js"></script>
</html>
