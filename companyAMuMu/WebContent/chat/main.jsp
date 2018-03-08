<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>聊天</title>
<link href="../css/right.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/index.js"></script>
</head>
<frameset rows="85%,*" onbeforeunload="return closeWindow()">
	
	
	<frameset cols="80%,*">		
			
			
			<frame src="chat/message.jsp" name="message" />			
		
			<frame src="chat/userList.jsp" name="userList">		
		
		
	</frameset>
	
	<frame src="chat/sendMessage.jsp" name="sendMessage" />
	
</frameset>
<noframes></noframes>
</html>