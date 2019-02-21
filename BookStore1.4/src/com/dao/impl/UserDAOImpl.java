package com.dao.impl;

import java.util.List;

import org.hibernate.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.UserDAO;
import com.entity.Admin;
import com.entity.User;

public class UserDAOImpl implements UserDAO {

	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public List searchUsers(User condition) {
		//通过sessionFactory获得Session
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from User u where u.username=? and u.password=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, condition.getUsername());
		query.setParameter(1,condition.getPassword());
		List list= query.list();	  //执行查询，获得结果		
		//tx.commit();
		session.close();
		return list;
	}

	//添加用户
	@Override
	public void addUsers(User users) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(users);
		tx.commit();
		//session.close();
	}

	

	//修改个人信息
	@Override
	public void modifyUsers(User users) {
		Session session=sessionFactory.getCurrentSession();
		session.update(users);
	}

	@Override
	public List searchAdmin(Admin condition) {
		// TODO Auto-generated method stub
		//通过sessionFactory获得Session
				Session session=sessionFactory.getCurrentSession();
				Transaction tx=session.beginTransaction();
				String sql="from Admin a where a.username=? and a.password=?";	
				Query query=session.createQuery(sql);
				query.setParameter(0, condition.getUsername());
				query.setParameter(1,condition.getPassword());
				List list= query.list();	  //执行查询，获得结果		
				//tx.commit();
				session.close();
				return list;
	}

}
