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
<link href="css/top.css" rel="stylesheet" type="text/css" />
<link href="css/conterys.css" rel="stylesheet" type="text/css" />
<link href="css/global.css" rel="stylesheet" type="text/css" />
<link href="css/chat.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/validate.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>
<body>
	<%@ include file="top.jsp"%>
	<div id="contery">
		<%@ include file="left.jsp"%>
		<form action="chat/registerManage.jsp?param=login" method="post"
			onsubmit="return checkForm()">
			<table id="table" cellpadding="0" cellspacing="0";>
				<tr id="table_tr_one">
					<td colspan="2">会员登录</td>
				</tr>
				<tr id="table_trr">
					<td id="table_trr_td1"><span>您的账号：</span></td>
					<td id="table_trr_td2"><input name="userName" type="text" />
					</td>
				</tr>
				<tr id="table_trc">
					<td colspan="2"></td>
				</tr>
				<tr id="table_trr">
					<td id="table_trr_td1"><span>您的密码：</span></td>
					<td id="table_trr_td2"><input name="password" type="password" />
					</td>
				</tr>
				<tr id="table_tr_four">
					<td colspan="2"><a href="zhuce.jsp">我要注册</a></td>
				</tr>
				<tr id="table_trw"></tr>
				<tr id="table_tr_five">
					<td colspan="2"><input name="submit" type="submit" value="登录"/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="reset"
						type="reset" value="重置" /></td>
				</tr>
			</table>
		</form>
		<%@ include file="button.jsp"%>
	</div>
</body>
	<script type="text/javascript">
		build_validate("userName","用户名必须在1-20个字符之间","Limit","1","20");
  		build_validate("password","密码长度必须在4-20个字符之间","Limit","4","20");
	</script>
</html>