package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.AnnounceDAO;
import com.entity.Announce;
import com.entity.Courseclass;

public class AnnounceDAOImpl implements AnnounceDAO {
	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void addAnnounce(Announce announce) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(announce);
		tx.commit();
	}
	@Override
	public List searchAnnounceByTea(int tid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Announce a where a.courseclass.teacher.tid=?";	
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
	public int getTotalAnnounceByTea(int tid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Announce a where a.courseclass.teacher.tid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, tid);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public void deleteAnnounce(int aid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Announce oneAnnounce=(Announce)session.get(Announce.class, aid);
		session.delete(oneAnnounce);
		tx.commit();
		//session.close();
	}
	@Override
	public Announce getOneAnnounce(int cid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Announce a where a.courseclass.classid=? order by a.aid desc";	
		Query query=session.createQuery(sql);
		query.setParameter(0, cid);
		List list= query.list();	  //执行查询，获得结果
		Announce a = null;
		if(list.size()!=0){
			a=(Announce) list.get(0);
			System.out.println("announce class is "+a.getCourseclass().getName());
		}
		tx.commit();
		//session.close();
		return a;
	}
	@Override
	public List searchAnnounceByStu(int sid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Announce a where a.courseclass in "
				+ "(select sc.courseclass from Studentclass sc where sc.student.sid=?)";	
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public List getClassAnnounce(int classid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Announce a where a.courseclass.classid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, classid);
		List list= query.list();	  //执行查询，获得结果
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public List queryAnnounce(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Announce";	
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
	public int getTotalAnnounce() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Announce";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list.size();
	}

}
