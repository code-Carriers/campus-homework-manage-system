package com.dao;

import java.util.List;

import com.entity.Book;

public interface BookDAO {
	public List getBookByCatalogidPaging(Integer catalogid,int currentPage,int pageSize);
	public int getTotalByCatalog(Integer catalogid);
	public List getRequiredBookByHql(String hql);
	public Book getBookDetail(Integer bookid);
}
