package com.service.impl;

import java.util.List;

import com.dao.IOrderDAO;
import com.entity.Order;
import com.service.OrderBiz;

public class OrderBizImpl implements OrderBiz {

	private IOrderDAO orderDAO;
	
	public IOrderDAO getOrderDAO() {
		return orderDAO;
	}

	public void setOrderDAO(IOrderDAO orderDAO) {
		this.orderDAO = orderDAO;
	}

	@Override
	public void addOrder(Order o) {
		// TODO Auto-generated method stub
		orderDAO.addOrder(o);
	}

	@Override
	public void cancelOrder(int oid) {
		// TODO Auto-generated method stub
		orderDAO.cancelOrder(oid);
	}

	@Override
	public List queryOrderByUser(int uid) {
		// TODO Auto-generated method stub
		return orderDAO.queryOrderByUser(uid);
	}

	@Override
	public List queryOrder() {
		// TODO Auto-generated method stub
		return orderDAO.queryOrder();
	}

	@Override
	public void deliverOrder(int oid) {
		// TODO Auto-generated method stub
		orderDAO.deliverOrder(oid);
	}

}
