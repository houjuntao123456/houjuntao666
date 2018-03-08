<%@ page import="java.util.ArrayList"%>
<%@ page import="com.amumu.companyamumu.entity.Users"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	List<String> messageList = (List<String>) application.getAttribute("messageList");
	String message = request.getParameter("message");
	Users user = (Users) session.getAttribute("user");

	if (messageList == null || messageList.size() == 0) {
		messageList = new ArrayList<String>();
		application.setAttribute("messageList",messageList);
	}
	if (message != null && !"".equals(message)) {
		messageList.add("<img src='../image/iboy.gif' />&nbsp;<font color='blue'>"+user.getUsername() + "&nbsp;<b>说：</b></font><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
		+ message);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>Insert title here</title>
</head>
<body>
	<table width="100%" border="0" align="left" cellpadding="0"
	cellspacing="0">
	
	<%
			for (int i = 0; i < messageList.size(); i++) {
			String userName = (String) messageList.get(i);
			
	%>


	<tr align="left">
		<td height="20" class="p16"><%=userName%></td>
	</tr>
	
	<%
		
		}
	%>
</body>
</html>