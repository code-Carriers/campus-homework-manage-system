package com.dao;

import java.util.List;

import com.entity.Order;

public interface IOrderDAO {

	public void addOrder(Order o);
	public void cancelOrder(int oid);
	public List queryOrderByUser(int uid);
	public List queryOrder();
	public void deliverOrder(int oid);
}
