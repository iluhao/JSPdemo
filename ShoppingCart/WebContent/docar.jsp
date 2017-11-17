<%@page import="com.lh.cart.GoodsSingle"%>
<%@page import="com.lh.cart.MyTools"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="myCar" class="com.lh.cart.CartList" scope="session"></jsp:useBean>
<%
	String action = request.getParameter("action");
	if(action == null) {
		action = "";
	}
	if(action.equals("buy")) {
		ArrayList goodsList = (ArrayList)session.getAttribute("goodslist");
		int id = MyTools.srtToint(request.getParameter("id"));
		GoodsSingle single = (GoodsSingle)goodsList.get(id);
		myCar.addItem(single);
		response.sendRedirect("show.jsp");
	} else if(action.equals("remove")) {
		String name = request.getParameter("name");
		System.out.println("要删除的商品的名称是111："+name);
		myCar.removeItem(name);
		response.sendRedirect("showcar.jsp");
	} else if(action.equals("clear")) {
		myCar.clearCar();
		response.sendRedirect("showcar.jsp");
	} else {
		response.sendRedirect("show.jsp");
	}
%>