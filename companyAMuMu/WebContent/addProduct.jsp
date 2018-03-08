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
<title>添加商品信息</title>
<script type="text/javascript" src="js/yanzheng.js"></script>
<script type="text/javascript" src="js/validate.js"></script>
</head>
<body>
	<form action="${pageContext.request.contextPath}/AddProduct" method="post" onSubmit="return checkForm()">
		<table border="1" cellspacing="0" style="margin-left:200px;margin-top:50px;">
			<tr>
				<th>添加商品信息</th>
			</tr>
			<tr>
				<td>商品编号（系列）：</td>
				<td><input type="text" name="serialNumber" /></td>
			</tr>
			<tr>
				<td>商品名称：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>商品商标：</td>
				<td><input type="text" name="brand" /></td>
			</tr>
			<tr>
				<td>商品型号：</td>
				<td><input type="text" name="model" /></td>
			</tr>
			<tr>
				<td>商品价格：</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td>商品图片：</td>
				<td><input type="file" name="picture" /></td>
			</tr>
			<tr>
				<td>商品介绍：</td>
				<td><textarea name='description' cols='80' rows='6' class='input1'></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置" /></td>
			</tr>
		</table>
	</form>
	<script type="text/javascript">
			build_validate("serialNumber","商品编号（系列）必须在1-20个字符之间","Limit","1","20");
  			build_validate("name","商品名称必须在1-20个字符之间","Limit","1","20");
  			build_validate("brand","商品商标必须在1-20个字符之间","Limit","1","20");
  			build_validate("model","商品型号必须在1-20个字符之间","Limit","1","20");
  			build_validate("price","商品价格格式不正确","Currency","1","20");
  		  	build_validate("picture","商品图片必须在1-20个字符之间","Limit","1","50");
  		  	build_validate("description","商品介绍必须在1-100个字符之间","Limit","1","100");
		</script>
</body>
</html>
