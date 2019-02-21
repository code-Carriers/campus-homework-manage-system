package com.biz.impl;

import java.util.List;

import com.biz.BookBiz;
import com.dao.BookDAO;
import com.entity.Book;

public class BookBizImpl implements BookBiz {

	private BookDAO bookDAO;
	
	public BookDAO getBookDAO() {
		return bookDAO;
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

	@Override
	public List getBookByCatalogidPaging(Integer catalogid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return bookDAO.getBookByCatalogidPaging(catalogid, currentPage, pageSize);
	}

	@Override
	public int getTotalByCatalog(int catalogid) {
		// TODO Auto-generated method stub
		return bookDAO.getTotalByCatalog(catalogid);
	}

	@Override
	public List getRequredBookByHql(String hql) {
		// TODO Auto-generated method stub
		return bookDAO.getRequiredBookByHql(hql);
	}

	@Override
	public Book getBookDetail(Integer bookid) {
		// TODO Auto-generated method stub
		return bookDAO.getBookDetail(bookid);
	}

}
