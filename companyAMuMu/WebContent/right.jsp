<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>right 新闻列表</title>
</head>
<body>
	<div id="contery_right">
		<p id="contery_right_title">新闻列表</p>
		<table cellspacing="0" cellpadding="4" width="100%" align="center" border="0">
			<%@include file="showNews.jsp"%>
			<tr valign="bottom" align="right">
				<td colspan="3" width="100%">&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath }/NewsServlet?action=all&page=${prePageNum }">上一页</a>
					<a href="${pageContext.request.contextPath }/NewsServlet?action=all&page=${nextPageNum }">下一页</a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>