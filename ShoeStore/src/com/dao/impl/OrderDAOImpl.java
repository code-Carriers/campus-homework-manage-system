package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.IOrderDAO;
import com.entity.Order;
import com.entity.User;

public class OrderDAOImpl implements IOrderDAO {
	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void addOrder(Order o) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(o);
		tx.commit();
	}

	@Override
	public void cancelOrder(int oid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Order order=(Order) session.get(Order.class, oid);
		order.setStatus("已取消");
		session.saveOrUpdate(order);
		tx.commit();
	}

	@Override
	public List queryOrderByUser(int uid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Order o where o.user.uid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, uid);
		List list= query.list();	  //执行查询，获得结果		
		//tx.commit();
		//session.close();
		return list;
	}

	@Override
	public List queryOrder() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Order";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		//tx.commit();
		session.close();
		return list;
	}
	@Override
	public void deliverOrder(int oid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Order order=(Order) session.get(Order.class, oid);
		order.setStatus("已发货");
		session.saveOrUpdate(order);
		tx.commit();
	}

}
