<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lh.m.MyTools" %> 
<jsp:useBean id="myword" class="com.lh.m.WordSingle" scope="request"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" rules="rows">
		<tr height="30">
			<td>留  言  者:</td>
			<td><%=MyTools.toChinese(myword.getAuthor()) %></td>
		</tr>
		<tr height="30">
			<td>留言标题:</td>
			<td><%=MyTools.toChinese(myword.getTitle()) %></td>
		</tr>
		<tr height="30">
			<td>留言内容</td>
			<td>
				<textarea rows="8" cols="34" readonly>
					<%=MyTools.toChinese(myword.getContent()) %>	
				</textarea>
			</td>
		</tr>
		<tr height="30" align="center">
			<td colspan="2" align="center">
				<a href="index.jsp">继续留言</a>
			</td>
		</tr>
	</table>
</body>
</html>