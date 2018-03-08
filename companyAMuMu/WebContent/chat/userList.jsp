<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%
	
	List userList = (List) application.getAttribute("users");
	// Users user=(Users) session.getAttribute("users");
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
	cellspacing="0" bordercolor="#EBEBEB">
	<%
			for (int i = 0; i < userList.size(); i++) {
			String userName = (String) userList.get(i);
			
	%>
	<tr align="left">
		<td height="20"class="p16"><img src="../image/iboy.gif" />&nbsp;<%=userName%></td>
	</tr>	
	<%		
		}
	%>
</table>
</body>
</html>