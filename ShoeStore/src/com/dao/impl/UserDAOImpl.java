package com.dao.impl;

import java.util.List;

import org.hibernate.*;

import com.dao.IUserDAO;
import com.entity.*;

public class UserDAOImpl  implements IUserDAO {
	
	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List searchUser(User u) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from User u where u.phone=? and u.password=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, u.getPhone());
		query.setParameter(1, u.getPassword());
		List list= query.list();	  //执行查询，获得结果		
		//tx.commit();
		session.close();
		return list;
	}

	@Override
	public void register(User u) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(u);
		tx.commit();
	}
	@Override
	public List adminLogin(Admin a) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Admin a where a.username=? and a.password=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, a.getUsername());
		query.setParameter(1, a.getPassword());
		List list= query.list();	  //执行查询，获得结果		
		//tx.commit();
		session.close();
		return list;
	}
	@Override
	public List getAllUser() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from User";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		//tx.commit();
		session.close();
		return list;
	}
	@Override
	public void deleteUser(int uid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		User user=(User) session.get(User.class, uid);
		session.delete(user);
		tx.commit();
	}

}
