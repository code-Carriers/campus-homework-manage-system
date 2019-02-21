package com.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;

import com.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.*;

public class OrderAction extends ActionSupport  {
	private ShoeBiz shoeBiz;
	private OrderBiz orderBiz;
	int oid;
	int number;
	int sid;
	String address;
	//注入
	
	public ShoeBiz getShoeBiz() {
		return shoeBiz;
	}
	public void setShoeBiz(ShoeBiz shoeBiz) {
		this.shoeBiz = shoeBiz;
	}
	public OrderBiz getOrderBiz() {
		return orderBiz;
	}
	public void setOrderBiz(OrderBiz orderBiz) {
		this.orderBiz = orderBiz;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	

	public String add_order() throws Exception {
		Order order=new Order();
		Map session=ActionContext.getContext().getSession();
		User user=(User) session.get("user");
		if(user==null)
			return "input";
		order.setUser(user);
		order.setOrderDate(new Date());
		Shoe shoe=shoeBiz.getOneShoe(sid);
		double total=number*shoe.getPrice();
		order.setShoe(shoe);
		order.setNumber(number);
		order.setTotal(total);
		order.setAddress(address);
		order.setStatus("处理中");
		orderBiz.addOrder(order);
		return "success";  
	}
	public String query_userOrder() throws Exception {
		Map session=ActionContext.getContext().getSession();
		User user=(User) session.get("user");
		List userOrders=orderBiz.queryOrderByUser(user.getUid());
		session.put("userOrders", userOrders);
		return "success";  
	}
	public String cancel_order() throws Exception {
		orderBiz.cancelOrder(oid);
		return "success";  
	}
	public String query_order() throws Exception {
		Map session=ActionContext.getContext().getSession();
		List orders=orderBiz.queryOrder();
		session.put("orders", orders);
		return "success";  
	}
	public String deliver_order() throws Exception {
		orderBiz.deliverOrder(oid);
		return "success";  
	}
}
