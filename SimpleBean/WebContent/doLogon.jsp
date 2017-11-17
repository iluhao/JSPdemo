<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="user" class="com.lh.bean.UserInfo">
	<jsp:setProperty name="user" property="*"/>
</jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<b>用户名:</b><jsp:getProperty property="name" name="user"/>
		<b>密码:</b><jsp:getProperty property="pwd" name="user"/>
	</center>
</body>
</html>