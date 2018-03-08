<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
   <link rel="stylesheet" type="text/css" href="css/1.css" />
</head>
<body>

   <div class="big">
        <form action="message" method="get">
    <div class="qqq">
      
      <div class="q"><p></p>
            <marquee onMouseOut=start(); onMouseOver=stop(); scrollamount=3>
            <b><font color=red>欢迎您使用&nbsp;留言版&nbsp;<div class="ly"><a href="newmessage.jsp">添加新留言</a></div></font> </b>
            </marquee>
      </div>
      <table border="1" class="center"  cellspacing="0" cellpadding="0">
        <tr>
            <th>回复</th>
            <th>标题</th>
            <th>作者</th>
            <th>时间</th>
        </tr>
        <c:forEach var="MB" items="${requestScope.MB }">
        <tr>
            <td>${MB.count }</td>
            <td><a href="${pageContext.request.contextPath }/revert?messageID=${MB.messageID }&action=find">${MB.title }</a></td>
            <td>${MB.writer }</td>
            <td>${MB.writeDate }</td>
            
        </tr>
    </c:forEach>
    </table>
    </div>
    </form>
 </div>
</body>
</body>
</html>