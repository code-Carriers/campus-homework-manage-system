package com.biz;

import java.util.List;

import com.entity.Book;

public interface BookBiz {

	public List getBookByCatalogidPaging(Integer catalogid,int currentPage,int pageSize);
	public int getTotalByCatalog(int catalogid);
	public List getRequredBookByHql(String hql);
	public Book getBookDetail(Integer bookid);
}
