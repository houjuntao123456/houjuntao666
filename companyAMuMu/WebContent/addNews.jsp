<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<title>添加新闻信息</title>
<script type="text/javascript" src="js/validate.js"></script>
<script type="text/javascript" src="js/yanzheng.js"></script>
</head>
<body>
	<form action="${pageContext.request.contextPath }/AddNews" method="post" onSubmit="return checkForm()">
		<table border="1" cellspacing="0" style="margin-left:200px;margin-top:50px;">
			<tr>
				<td colspan="2">添加新闻信息</td>
			</tr>
			<tr>
				<td width="100px">新闻标题：	</td>
				<td width="500px;"><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td>新闻内容：</td>
				<td><textarea name='content' cols='80' rows='6'></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置" /></td>
			</tr>
		</table>
	</form>
	<script type="text/javascript">
		build_validate("title","新闻标题必须在1-50个字符之间","Limit","1","50");
  		build_validate("content","新闻内容必须在1-1000个字符之间","Limit","1","1000");
	</script>
</body>
</html>
