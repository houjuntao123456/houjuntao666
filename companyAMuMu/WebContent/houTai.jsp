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
<meta charset="utf-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/global.css">
<link rel="stylesheet" type="text/css" href="css/Xiugai.css">
</head>
<body>
	<div id="manage_up">
		<div class="chat_left">后台管理</div>
		<div class="chat_right">
			<span>欢迎${sessionScope.userinfo.username }登录</span> <input
				type="button" value="[安全退出]" onclick="quit()" /> <a href="IndexSewrvlet">[返回首页]</a>
		</div>
	</div>
	<iframe frameBorder="0" name="left" src="lefthoutai.jsp" height="825px;"
		target="main"> </iframe>

	<iframe frameBorder="0" name="right" height="825px;" width="900px;" target="main">

	</iframe>
</body>
<script type="text/javascript">
	function quit(){
		var se=confirm("确定要退出么？");
		if(se==true){
			location="back.jsp";
		}
	}
</script>
</html>
