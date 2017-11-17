package com.lh.cart;

import java.util.ArrayList;

public class CartList {
	private ArrayList<GoodsSingle> buylist = new ArrayList<GoodsSingle>();
	// 获取购物列表
	public ArrayList getBuylist() {
		return buylist;
	}
	// 添加指定商品
	public void addItem(GoodsSingle single) {
		if(single != null) {
			boolean existed = false;
			for(int i = 0; i < buylist.size(); i++) {
				GoodsSingle temp = buylist.get(i);
				if(temp.getName() == single.getName()) {
					existed = true;
					temp.setNum(temp.getNum()+1);
				}
			}
			if(!existed) {
				GoodsSingle temp = new GoodsSingle();
				temp.setName(single.getName());
				temp.setPrice(single.getPrice());
				temp.setNum(1);
				buylist.add(temp);
			}
		}
	}
	// 删除指定商品
	public void removeItem(String single) {
		System.out.println("要删除的商品的名称是222："+MyTools.toChinese(single));
		for(int i = 0; i < buylist.size(); i++) {
			GoodsSingle temp = buylist.get(i);
			if(temp.getName().equals(MyTools.toChinese(single))) {
				if(temp.getNum() > 1) {
					temp.setNum(temp.getNum()-1);
					break;
				} else if(temp.getNum() == 1) {
					buylist.remove(i);
					break;
				}
			}
		}
	}
	// 清空购物车
	public void clearCar() {
		buylist.clear();
	}
}
