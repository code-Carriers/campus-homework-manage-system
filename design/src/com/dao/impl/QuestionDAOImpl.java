package com.dao.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.QuestionDAO;
import com.entity.Question;
import com.entity.Teacher;

public class QuestionDAOImpl implements QuestionDAO {
	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void addQuestion(Question q) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(q);
		tx.commit();
	}

	@Override
	public void answerQuestion(String answer,int qid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="update Question set answer=? , answer_time=? where qid=?  ";	
		Query query=session.createQuery(sql);
		query.setParameter(0, answer);
		query.setParameter(1, new Date());
		query.setParameter(2,qid);
		query.executeUpdate();
		tx.commit();
	}

	@Override
	public List searchQuestionByStu(int sid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Question q where q.student.sid=?";	
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
	public List searchQuestionByTea(int tid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Question q where q.teacher.tid=?";	
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
	public int getTotalQuestionByStu(int sid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Question q where q.student.sid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, sid);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public List searchQuestionByClass(int classid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Question q where q.courseclass.classid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, classid);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public int getTotalQuestionByTea(int tid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Question q where q.teacher.tid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, tid);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public List searchQuestionOfNotAnswer(int tid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Question q where q.teacher.tid=? and q.answer is null";	
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
	public int getTotalQuestionOfNotAnswer(int tid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Question q where q.teacher.tid=? and q.answer is null";	
		Query query=session.createQuery(sql);
		query.setParameter(0, tid);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public List queryQuestion(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Question";	
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
	public int getTotalQuestion() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Question";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //ִ�в�ѯ����ý��		
		tx.commit();
		//session.close();
		return list.size();
	}
	@Override
	public void deleteQuestion(int qid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Question question=(Question)session.get(Question.class, qid);
		session.delete(question);
		tx.commit();
	}
	@Override
	public void deleteAnswer(int qid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="update Question set answer=null, answer_time=null  where qid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, qid);
		query.executeUpdate();
		tx.commit();
	}

}
