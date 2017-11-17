<%@page import="com.lh.cart.GoodsSingle"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ArrayList goodslist = (ArrayList)session.getAttribute("goodslist");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1px" width="450">
		<tr><td align="center" colspan="3">提供商品如下</td></tr>
		<tr align="center">
			<td>名称</td>
			<td>价格(元/斤)</td>
			<td>购买</td>
		</tr>
		<% if(goodslist == null || goodslist.size() == 0) { %>
		<tr><td align="center" colspan="3">当前没有商品可显示</td></tr>
		<% } else {
				for(int i = 0; i < goodslist.size(); i++) {
					GoodsSingle single = (GoodsSingle)goodslist.get(i); 
					System.out.print(single.getName());%>
					<tr height="25" align="center">
						<td><%=single.getName() %></td>
						<td><%=single.getPrice() %></td>
						<td><a href="docar.jsp?action=buy&id=<%=i%>">购买</a></td>
					</tr>	
		<% 		}
			} 
		%>
		<tr><td align="center" colspan="3"><a href="showcar.jsp">查看购物车</a></td></tr>
	</table>
</body>
</html>