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
<style>
	td{
		padding:20px 10px;
	}
</style>
</head>
<body>
	<div>
		<table border="1" cellspacing="0" style="margin-left:200px;margin-top:50px;">
			<tr>
				<td colspan="3">用户管理</td>
			</tr>
			<tr>
				<th width="200px;">用户名</th>
				<th width="200px;">身份代码</th>
				<th width="200px;">删除</th>
			</tr>
			<c:forEach var="usersInfo" items="${requestScope.usersInfo }">
				<tr>
					<td>${usersInfo.username }</td>
					<c:if test="${usersInfo.status==1 }">
						<td>系统管理员</td>
					</c:if>
					<c:if test="${usersInfo.status==0 }">
						<td>管理员</td>
					</c:if>
					<c:if test="${usersInfo.username==sessionScope.userinfo.username }"></c:if>
					<c:if test="${usersInfo.username!=sessionScope.userinfo.username }">
						<td><a href="${pageContext.request.contextPath }/DeleteUsers?username=${usersInfo.username }" onclick="return quit2()">删除</a></td>
					</c:if>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
<script type="text/javascript" src="js/shanchu.js"></script>
</html>
