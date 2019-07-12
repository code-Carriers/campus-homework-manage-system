package com.dao.impl;

import java.util.List;

import org.hibernate.*;

import com.dao.UserDAO;
import com.entity.*;

public class UserDAOImpl implements UserDAO {

	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//登录验证
	@Override
	public List searchStu(Student condition){
		//通过sessionFactory获得Session
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Student stu where stu.email=? and stu.password=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, condition.getEmail());
		query.setParameter(1,condition.getPassword());
		List list= query.list();	  //执行查询，获得结果		
		//tx.commit();
		session.close();
		return list;
	}
	@Override
	public List searchTea(Teacher condition) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Teacher tea where tea.email=? and tea.password=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, condition.getEmail());
		query.setParameter(1,condition.getPassword());
		List list= query.list();	  //执行查询，获得结果
		System.out.println(condition.getEmail()+" "+condition.getPassword());
		//tx.commit();
		session.close();
		return list;
	}

	//添加用户
	@Override
	public void addStu(Student users) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(users);
		tx.commit();
		//session.close();
	}
	@Override
	public void addTea(Teacher users) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(users);
		tx.commit();
		//session.close();
	}
	

	//修改个人信息
	@Override
	public void modifyStu(Student users) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.saveOrUpdate(users);
		tx.commit();
	}
	
	//查找用户名
	@Override
	public boolean searchStu(String email) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Student stu where stu.email=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, email);
		List list= query.list();	  //执行查询，获得结果		
		//tx.commit();
		session.close();
		if(list.size()!=0)
			return true;
		else return false;
	}	
	@Override
	public boolean searchTea(String email) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Teacher tea where tea.email=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, email);
		List list= query.list();	  //执行查询，获得结果		
		//tx.commit();
		session.close();
		if(list.size()!=0)
			return true;
		else return false;
	}
	@Override
	public void modifyTea(Teacher users) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.saveOrUpdate(users);
		tx.commit();
	}
	@Override
	public List queryStudent(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Student";	
		Query query=session.createQuery(sql);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public List queryTeacher(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Teacher";	
		Query query=session.createQuery(sql);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public int getTotalStudent() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Student";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public int getTotalTeacher() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Teacher";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public void deleteStudent(int sid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Student student=(Student)session.get(Student.class, sid);
		session.delete(student);
		tx.commit();
	}
	@Override
	public void deleteTeacher(int tid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Teacher teacher=(Teacher)session.get(Teacher.class, tid);
		session.delete(teacher);
		tx.commit();
	}
	@Override
	public List getAllTeacher() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Teacher";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public Teacher getTeacher(int tid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Teacher where tid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, tid);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		Teacher t=(Teacher) list.get(0);
		//session.close();
		return t;
	}
	@Override
	public Student getStudent(int sid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Student where sid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		Student s=(Student) list.get(0);
		//session.close();
		return s;
	}
	@Override
	public void modifyStuPass(String password,String email) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="update Student s set s.password=? where s.email=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, password);
		query.setParameter(1, email);
		query.executeUpdate();		
		tx.commit();
	}
	@Override
	public void modifyTeaPass(String password,String email) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="update Teacher t set t.password=? where t.email=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, password);
		query.setParameter(1, email);
		query.executeUpdate();		
		tx.commit();
	}

	

}
