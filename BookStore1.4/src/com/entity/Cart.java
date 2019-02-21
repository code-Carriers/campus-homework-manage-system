package com.entity;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;

public class Cart {

	protected Map<Integer,Orderitem> items;
	
	public Map<Integer, Orderitem> getItems() {
		return items;
	}
	public void setItems(Map<Integer, Orderitem> items) {
		this.items = items;
	}
	public Cart(){
		if(items==null)
			items=new HashMap<Integer,Orderitem>();
	}
	public void addBook(Integer bookid,Orderitem orderitem) throws Exception{
		if(items.containsKey(bookid)){
			Orderitem o=items.get(bookid);
			int number=o.getQuantity()+orderitem.getQuantity();
			int amount=o.getBook().getPrice()*number;
			orderitem.setQuantity(number);
			orderitem.setAmount(amount);
			items.put(bookid, orderitem);
		}
		else{ 
			orderitem.setAmount(orderitem.getBook().getPrice());
			items.put(bookid, orderitem);
		}
	}
	public void updateCart(Integer bookid,Integer quantity) throws Exception{
		Orderitem o=items.get(bookid);
		int amount=o.getBook().getPrice()*quantity;
		o.setQuantity(quantity);
		o.setAmount(amount);
		items.put(bookid, o);
	}
	public int getAmount(Integer bookid){
		Orderitem o=items.get(bookid);
		int amount=o.getBook().getPrice()*o.getQuantity();
		return amount;
	}
}
