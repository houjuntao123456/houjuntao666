<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<form action="chat/registerManage.jsp?param=register" method="post"
			onSubmit="return checkForm()">
			<table id="table" cellpadding="0" cellspacing="0";>
				<tr id="table_tr_one">
					<td colspan="2">会员注册：</td>
				</tr>
				<tr id="table_trr">
					<td id="table_trr_td1">用户名：</td>
					<td id="table_trr_td2"><input name="userName" type="text" />
					</td>
				</tr>
				<tr id="table_trc">
					<td colspan="2"></td>
				</tr>
				<tr id="table_trr">
					<td id="table_trr_td1">密&nbsp;&nbsp;&nbsp;码：</td>
					<td id="table_trr_td2"><input name="password" type="password" />
					</td>
				</tr>
				<tr id="table_trc">
					<td colspan="2"></td>
				</tr>
				<tr id="table_trr">
					<td id="table_trr_td1">确认密码：</td>
					<td id="table_trr_td2"><input name="confirmpassword"
						type="password" /></td>
				</tr>
				<tr id="table_tr_four">
					<td colspan="2"></td>
				</tr>
				<tr id="table_trw"></tr>
				<tr id="table_tr_five">
					<td colspan="2"><input name="submit" type="submit" value="提交" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="reset"
						type="reset" value="重置" /></td>
				</tr>
			</table>
		</form>
		<%@ include file="button.jsp"%>
	</div>
</body>
	<script>
	  	build_validate("userName","用户名必须在1-20个字符之间","Limit","1","20");
	  	build_validate("password","密码长度必须在6-20个字符之间","Limit","6","20");
	  	build_validate_compare("confirmpassword","两次密码不同！","password");
	</script>
</html>