package com.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.entity.*;
import com.dao.CatalogDAO;

public class CatalogDAOImpl implements CatalogDAO {

	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	public List getAllCatalogs() {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery("from Catalog c");
		List catalogs=query.list();
		System.out.print(catalogs);
		tx.commit();
		return catalogs;
	}

}
