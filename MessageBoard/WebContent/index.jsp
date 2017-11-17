<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="doword.jsp" method="post">
		<table border="1" rules="rows">
			<tr height="30">
				<td>留言者</td>
				<td><input name="author" type="text" size="20"></td>
			</tr>
			<tr height="30">
				<td>留言标题</td>
				<td><input name="title" type="text" size="35"></td>
			</tr>
			<tr height="30">
				<td>留言内容</td>
				<td><textarea name="content" rows="8" cols="34"></textarea></td>
			</tr>
			<tr height="30" align="center">
				<td colspan="2">
					<input type="submit" value="提交">
					<input type="reset" value="重置">
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>