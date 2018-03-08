<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>新闻详细信息</title>
<link href="css/top.css" rel="stylesheet" type="text/css" />
<link href="css/conterys.css" rel="stylesheet" type="text/css" />
<link href="css/global.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file="top.jsp"%>
	<div id="contery">
		<%@ include file="left.jsp"%>
		<%@ include file="newsRight.jsp"%>
		<%@ include file="button.jsp"%>
	</div>
</body>
</html>