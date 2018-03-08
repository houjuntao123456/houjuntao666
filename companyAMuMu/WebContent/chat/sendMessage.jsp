<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>Insert title here</title>
<link href="css/global.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/index.js"></script>
</head>
<body>
	<form action="message.jsp" method="post" name="send" onSubmit="return checkSend()" target="message">
  		<input type="hidden" name="message" value="" />
  		<p align="center">
  			请输入发送信息：
   			<input type="text" name="msg" size="30" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   			<input type="submit" value="发送" />
   		</p>
   	</form>
</body>
</html>