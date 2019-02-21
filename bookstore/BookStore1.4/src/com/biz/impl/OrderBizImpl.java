package com.biz.impl;

import java.util.List;

import com.biz.OrderBiz;
import com.dao.OrderDAO;
import com.entity.Orderitem;
import com.entity.Orders;

public class OrderBizImpl implements OrderBiz {

	private OrderDAO orderDAO;
	
	public OrderDAO getOrderDAO() {
		return orderDAO;
	}

	public void setOrderDAO(OrderDAO orderDAO) {
		this.orderDAO = orderDAO;
	}

	@Override
	public void saveOrder(Orders order) {
		// TODO Auto-generated method stub
		 orderDAO.saveOrder(order);
	}

	@Override
	public List searchOrder(Integer userid) {
		// TODO Auto-generated method stub
		return orderDAO.searchOrder(userid);
	}

	@Override
	public void pay(Integer userid, Integer bookid) {
		// TODO Auto-generated method stub
		orderDAO.pay(userid, bookid);
	}

}
