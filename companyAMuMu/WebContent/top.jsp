<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>top</title>
<link rel="stylesheet" type="text/css" href="css/global.css">
<link rel="stylesheet" type="text/css" href="css/top.css">
</head>
<body>
<div id="top">
	<div id="wire"></div>
	<div id="top_h1">
		<embed src="image/2.swf" width="800px" height="165px" />
	</div>
	<div id="wire"></div>
	<div id="top_r1">
		<div id="top_r1_left">
			<div id="top_r1_right">
				<a href="IndexSewrvlet"><img src="image/d_r3_c5.jpg" /></a>
				<a href="${pageContext.request.contextPath}/ProductListServlet"><img src="image/d_r3_c7.jpg" /></a>
				<a href="${pageContext.request.contextPath}/NewsServlet?action=all"><img src="image/d_r3_c8.jpg" /></a>
				<a href="denglu.jsp"><img src="image/d_r3_c9.jpg" /></a>
				<a href="${pageContext.request.contextPath}/message"><img src="image/d_r3_c10.jpg" /></a>
				<a href="back.jsp"><img src="image/d_r3_c13.jpg" /></a>
			</div>
		</div>
	</div>
	<div id="wire"></div>
</div>
</body>
</html>
