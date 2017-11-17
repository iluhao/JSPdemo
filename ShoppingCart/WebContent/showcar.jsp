<%@page import="com.lh.cart.GoodsSingle"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="myCar" class="com.lh.cart.CartList" scope="session"></jsp:useBean>
<%
	ArrayList buylist = myCar.getBuylist();
	float total = 0;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="450">
		<tr align="center"><td colspan="5">购买的商品如下</td></tr>
		<tr align="center">
			<td>名称</td>
			<td>价格(元/斤)</td>
			<td>数量</td>
			<td>总价(元)</td>
			<td>移除(-1/次)</d>
		</tr>
		<%
			if(buylist == null || buylist.size() == 0) { %>
				<tr align="center"><td colspan="5">您的购物车为空！</td></tr>
			<% } else {%>
		
				<% for(int i = 0; i < buylist.size(); i++){
						GoodsSingle single = (GoodsSingle)buylist.get(i);
						total += (single.getNum() * single.getPrice()); %>
						<tr>
							<td><%=single.getName() %></td>
							<td><%=single.getPrice() %></td>
							<td><%=single.getNum() %></td>
							<td><%=single.getPrice()*single.getNum() %></td>
							<td><a href="docar.jsp?action=remove&name=<%=single.getName() %>">移除</a></td>
						</tr>
					<% }
				}%>
		<tr align="center"><td colspan="5">应付金额<%=total %>元</td></tr>
		<tr align="center">
			<td colspan="3"><a href="show.jsp">继续购物</a></td>
			<td colspan="2"><a href="docar.jsp?action=clear">清空购物车</a></td>
		</tr>
	</table>
</body>
</html>