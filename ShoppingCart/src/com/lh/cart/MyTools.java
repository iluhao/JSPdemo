package com.lh.cart;

public class MyTools {
	public static int srtToint(String str) { // String to int
		if(str == null || str.equals("")) {
			str = "0";
		}
		int i = 0;
		try {
			i = Integer.parseInt(str);
		}catch (Exception e) {
			i = 0;
			e.printStackTrace();
		}
		return i;
	}
	
	public static String toChinese(String str) {
		if(str == null) {
			str = "";
		}
		try {
//			str = new String(str.getBytes("ISO-8859-1"),"gb2312");
			str = new String(str.getBytes("ISO-8859-1"),"utf-8");
//			str = new String(str.getBytes("UTF-8"),"gb2312");
		}catch (Exception e) {
			str = "";
			e.printStackTrace();
		}
		return str;
	}
}
