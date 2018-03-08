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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/houtai1.css">
<script type="text/javascript" src="js/yanzheng.js"></script>
<script type="text/javascript" src="js/validate.js"></script>
</head>
<body>
	<div>
		<form id="fir" action="${pageContext.request.contextPath}/AddUsers" method="post" onSubmit="return checkForm()">
			<table border="1" cellspacing="0">
				<tr>
					<td colspan="2">管理员-添加</td>
				</tr>
				<tr>
					<td id="td1">管理员名称：</td>
					<td id="td2"><input type="text" name="addName" /><span style="color: red;">&nbsp;*</span></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" name="password" /><span style="color: red;">&nbsp;*</span></td>
				</tr>
				<tr>
					<td>确认密码：</td>
					<td><input type="password" name="addPwds" /><span style="color: red;">&nbsp;*</span></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="重置" /></td>
				</tr>
			</table>
		</form>
		<script type="text/javascript">
			build_validate("addName","管理员名称必须在1-20个字符之间","Limit","1","20");
  			build_validate("password","密码长度必须在6-20个字符之间","Limit","6","20");
  			build_validate("addPwds","两次密码不一致","password");
		</script>
	</div>
</body>

</html>
