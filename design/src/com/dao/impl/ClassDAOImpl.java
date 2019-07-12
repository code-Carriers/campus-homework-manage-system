package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.ClassDAO;
import com.entity.*;

public class ClassDAOImpl implements ClassDAO {
	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List showClassByTea(int tid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Courseclass c where c.teacher.tid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, tid);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public List showClassByStu(int sid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="select c.courseclass from Studentclass c where c.student.sid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public void createClass(Courseclass courseclass) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(courseclass);
		tx.commit();
		//session.close();
	}
	@Override
	public List showClassByName(String name) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Courseclass c where c.name like '%"+name+"%'";
		Query query=session.createQuery(sql);		
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public void joinClass(Studentclass studentclass) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(studentclass);
		tx.commit();
		//session.close();
	}
	@Override
	public Courseclass searchoneClass(int classid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Courseclass c where c.classid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, classid);
		List list= query.list();	  
		Courseclass oneclass=(Courseclass) list.get(0);
		tx.commit();
		//session.close();
		return oneclass;
	}
	@Override
	public void exitClass(int studentclassid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Studentclass studentclass=(Studentclass) session.get(Studentclass.class, studentclassid);
		session.delete(studentclass);
		tx.commit();
		//session.close();
	}
	@Override
	public void deleteClass(int classid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Courseclass oneclass=(Courseclass)session.get(Courseclass.class, classid);
		session.delete(oneclass);
		tx.commit();
		//session.close();
	}
	@Override
	public int getTotalByTea(int tid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Courseclass c where c.teacher.tid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, tid);
		List list= query.list();	  //ִ�в�ѯ����ý��
		System.out.println("size is "+list.size());
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public int getTotalByStu(int sid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="select c.courseclass from Studentclass c where c.student.sid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public List showClassByTeaName(String teaName) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Courseclass c where c.teacher.name like '%"+teaName+"%'";
		Query query=session.createQuery(sql);		
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public List getClassByStu(int sid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="select c.courseclass from Studentclass c where c.student.sid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public Studentclass getStuClass(int sid, int classid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Studentclass c where c.student.sid=? and c.courseclass.classid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		query.setParameter(1,classid);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		if(list.size()>0)
			return (Studentclass) list.get(0);
		else
			return null;
	}
	@Override
	public List getClassStu(int classid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Studentclass c where  c.courseclass.classid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0,classid);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		return list;
	}
	@Override
	public List queryClass(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Courseclass";	
		Query query=session.createQuery(sql);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public int getTotalClass() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Courseclass";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public List searchClassByTeaAndClass(int tid, String classname) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Courseclass c where c.teacher.tid=? and c.name =?";
		Query query=session.createQuery(sql);		
		query.setParameter(0, tid);
		query.setParameter(1, classname);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public List getAllByTea(int tid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Courseclass c where c.teacher.tid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, tid);
		List list= query.list();	  //ִ�в�ѯ����ý��
		System.out.println("size is "+list.size());
		tx.commit();
		//session.close();
		return list;
	}

}
