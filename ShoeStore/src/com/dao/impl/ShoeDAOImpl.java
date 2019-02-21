package com.dao.impl;

import java.util.List;

import org.hibernate.*;

import com.dao.IShoeDAO;
import com.entity.*;

public class ShoeDAOImpl implements IShoeDAO {

	SessionFactory sessionFactory;	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List getTotalMenShoe() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Shoe where catalog='men'";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}

	@Override
	public List getTotalWomenShoe() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Shoe where catalog='women'";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}

	@Override
	public List getTotalSportShoe() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Shoe where catalog='sport'";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public Shoe getOneShoe(int sid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Shoe shoe=(Shoe) session.get(Shoe.class, sid);
		session.close();
		return shoe;
	}
	@Override
	public List getTotalkidShoe() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Shoe where catalog='kid'";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public List getBrands() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Brand";	
		Query query=session.createQuery(sql);
		List list= query.list();	  //执行查询，获得结果		
		//tx.commit();
		//session.close();
		return list;
	}
	@Override
	public List getBrandShoe(int bid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		String sql="from Shoe s where s.brands.bid=?";	
		Query query=session.createQuery(sql);
		query.setParameter(0, bid);
		List list= query.list();	  //执行查询，获得结果		
		tx.commit();
		//session.close();
		return list;
	}
	@Override
	public void deleteBrand(int bid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Brand brand=(Brand) session.get(Brand.class, bid);
		session.delete(brand);
		tx.commit();
	}
	@Override
	public void addBrand(Brand b) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(b);
		tx.commit();
	}
	@Override
	public void deleteShoe(int sid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Shoe shoe=(Shoe) session.get(Shoe.class, sid);
		session.delete(shoe);
		tx.commit();
	}
	@Override
	public void addShoe(Shoe s) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(s);
		tx.commit();
	}
	@Override
	public Brand getOneBrand(int bid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Brand brand=(Brand) session.get(Brand.class, bid);
		session.close();
		return brand;
	}

}
