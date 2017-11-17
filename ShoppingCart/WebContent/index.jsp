<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lh.cart.GoodsSingle" %>
<%@ page import="java.util.ArrayList" %>    
<%!
	static ArrayList<GoodsSingle> goodslist = new ArrayList();
	static{
		String[] names = {"苹果","香蕉","橘子","梨子"};
		float[] prices = {2.8f, 3.1f, 2.5f, 2.3f};
		for(int i = 0; i < 4; i++) {
			GoodsSingle single = new GoodsSingle();
			single.setName(names[i]);
			single.setPrice(prices[i]);
			single.setNum(1);
			goodslist.add(single);
		}
	}
%>

<%
	session.setAttribute("goodslist", goodslist);
	response.sendRedirect("show.jsp");
%>