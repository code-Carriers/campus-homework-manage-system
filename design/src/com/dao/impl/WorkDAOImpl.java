package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.WorkDAO;
import com.entity.Courseclass;
import com.entity.Studentwork;
import com.entity.Work;

public class WorkDAOImpl implements WorkDAO {
	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void addwork(Work work) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(work);
		tx.commit();
		//session.close();
	}
	@Override
	public List searchWorkByTea(int tid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Work w where w.teacher.tid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, tid);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public List searchWorkByClass(int classid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Work w where w.courseclass.classid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, classid);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public List searchWorkByStu(int sid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Work w where w.courseclass in "
				+ "(select sc.courseclass from Studentclass sc where sc.student.sid=? )";
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public Work searchOneWork(int workid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Work onework=(Work)session.get(Work.class, workid);
		session.close();
		return onework;
	}
	@Override
	public int getTotalWorkByTea(int tid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Work w where w.teacher.tid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, tid);		
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		return list.size();
	}
	@Override
	public int getTotalWorkByStu(int sid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Work w where w.courseclass in "
				+ "(select sc.courseclass from Studentclass sc where sc.student.sid=? )";	
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		return list.size();
	}
	@Override
	public void deleteWork(int workid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Work oneWork=(Work)session.get(Work.class, workid);
		session.delete(oneWork);
		tx.commit();
	}
	@Override
	public List searchWorkOfNoSubmit(int sid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
	
		String sql="from Work w where w.courseclass in "
				+ "(select sc.courseclass from Studentclass sc where sc.student.sid=? ) and w not in "
				+ "(select sw.work from Studentwork sw where sw.student.sid=? )";
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		query.setParameter(1, sid);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		return list;
	}
	@Override
	public List searchWorkOfSubmit(int sid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="select sw.work from Studentwork sw where sw.student.sid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List list= query.list();	  //执行查询，获得结果	
		tx.commit();
		return list;
	}
	@Override
	public int getTotalOfNoSubmit(int sid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
	
		String sql="from Work w where w.courseclass in "
		+ "(select sc.courseclass from Studentclass sc where sc.student.sid=? ) and w not in "
		+ "(select sw.work from Studentwork sw where sw.student.sid=? )";
		
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		query.setParameter(1, sid);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		return list.size();
	}
	@Override
	public int getTotalOfSubmit(int sid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="select sw.work from Studentwork sw where sw.student.sid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		List list= query.list();	  //执行查询，获得结果	
		tx.commit();
		return list.size();
	}
	@Override
	public List judgeOneStuWork(int sid, int workid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Studentwork sw where sw.student.sid=? and sw.work.workid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		query.setParameter(1, workid);
		List list= query.list();	  //执行查询，获得结果
		tx.commit();
		return list;
	}
	@Override
	public void submitWork(Studentwork sw) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(sw);
		tx.commit();
	}
	@Override
	public List searchStuWorkByClass(int workid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Studentwork sw where sw.work.workid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, workid);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public void modifyWork(Work work) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.saveOrUpdate(work);
		tx.commit();
	}
	@Override
	public void modifyScore(float score, int studentworkid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="update Studentwork sw set sw.score=? "
				+ "where sw.studentworkid=? ";	
		Query query=session.createQuery(sql);
		query.setParameter(0, score);
		query.setParameter(1, studentworkid);
		query.executeUpdate();
		tx.commit();
	}
	@Override
	public Studentwork searchOneStuWork(int studentworkid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Studentwork onestuwork=(Studentwork)session.get(Studentwork.class, studentworkid);
		session.close();
		return onestuwork;
	}
	@Override
	public List queryWork(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Work";	
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
	public int getTotalWork() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Work";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public List queryStudentWork(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Studentwork";	
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
	public int getTotalStudentWork() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Studentwork";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public void deleteStudentWork(int studentworkid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Studentwork oneStuWork=(Studentwork)session.get(Studentwork.class, studentworkid);
		session.delete(oneStuWork);
		tx.commit();
	}

}
