package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dao.BookDAO;
import com.entity.Book;

public class BookDAOImpl implements BookDAO {
	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List getBookByCatalogidPaging(Integer catalogid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Book b where b.catalog.catalogid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, catalogid);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List books=query.list();
		session.close();
		return books;
	}
	@Override
	public int getTotalByCatalog(Integer catalogid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Book b where b.catalog.catalogid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, catalogid);
		List books=query.list();
		session.close();
		return books.size();
	}
	@Override
	public List getRequiredBookByHql(String hql) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery(hql);
		List books=query.list();
		return books;
	}
	@Override
	public Book getBookDetail(Integer bookid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Book book=(Book)session.get(Book.class, bookid);
		session.close();
		return book;
	}

}
