<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:forEach var="news" items="${requestScope.newsList }" varStatus="status">
	<tr valign="top" align="left" bgcolor="#fff">
		<td height="30" width="5%">&nbsp;</td>
		<td height="30" width="10%">${status.count }</td>
		<td width="85%">
			<a href="detailNews.jsp?newsID=${news.newsID }">
				${news.title }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<font color="red">[${news.writerDate }]</font>
			</a>
		</td>
	</tr>
</c:forEach>
