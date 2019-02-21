package com.dao.impl;

import java.util.*;

import org.hibernate.*;

import com.dao.OrderDAO;
import com.entity.*;

public class OrderDAOImpl implements OrderDAO {
	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void saveOrder(Orders order) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(order);
		tx.commit();
		//session.close();		
	}
	
	@Override
	public List searchOrder(Integer userid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Orders orderses where orderses.user.userid=?";
		Query query=session.createQuery(sql);
		query.setParameter(0, userid);
		List list=null;
		list=query.list();
		System.out.println("\n order number "+list.size());
		return list;
	}
	@Override
	public void pay(Integer userid, Integer bookid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="update Order o set o.status='交易成功' where "
				+ "o.user in (from user u where u.userid=?)"
				+ " and o.book in (from book b where bookid=? )";	
		Query query=session.createQuery(sql);
		query.setParameter(0, userid);
		query.setParameter(1, bookid);
		query.executeUpdate();
		tx.commit();
	}

}
