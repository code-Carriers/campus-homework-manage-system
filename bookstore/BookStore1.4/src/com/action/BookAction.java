package com.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;
import java.util.Map;

import com.biz.*;
import com.entity.*;
public class BookAction extends ActionSupport{

	protected CatalogBiz catalogBiz;
	protected BookBiz bookBiz;
	protected Integer catalogid=1;
	public Integer currentPage=1;
	private String bookname;
	private Integer bookid;
	private int quantity;
	public void setCatalogBiz(CatalogBiz catalogBiz) {
		this.catalogBiz = catalogBiz;
	}

	public CatalogBiz getCatalogBiz() {
		return catalogBiz;
	}

	public BookBiz getBookBiz() {
		return bookBiz;
	}

	public void setBookBiz(BookBiz bookBiz) {
		this.bookBiz = bookBiz;
	}

	public Integer getCatalogid() {
		return catalogid;
	}

	public void setCatalogid(Integer catalogid) {
		this.catalogid = catalogid;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public Integer getBookid() {
		return bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	//查看目录
	public String browseCatalog() throws Exception{
		List catalogs=catalogBiz.getCatalogs();
		Map request=(Map) ActionContext.getContext().get("request");
		request.put("catalogs", catalogs);
		return "success";
	}	
	//查看图书分页
	public String browseBookPaging() throws Exception{
		int totalSize=bookBiz.getTotalByCatalog(catalogid);
		Pager pager=new Pager(currentPage,totalSize);
		List books=bookBiz.getBookByCatalogidPaging(catalogid, currentPage, pager.getPageSize());
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("books", books);
		request.put("pager", pager);
		Map session=ActionContext.getContext().getSession();
		request.put("catalogid", catalogid);
		return SUCCESS;
	}
	public String searchBook() throws Exception{
		StringBuffer hql=new StringBuffer("from Book b ");
		if(bookname!=null&&bookname.length()!=0){
			hql.append("where b.bookname like '%"+bookname+"%'");			
		}
		List books=bookBiz.getRequredBookByHql(hql.toString());
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("requiredBooks", books);
		return SUCCESS;
	}
	public String scanDetail() throws Exception{
		Book book=bookBiz.getBookDetail(bookid);
		Map request=(Map) ActionContext.getContext().get("request");
		request.put("book", book);
		return SUCCESS;
		
	}
	
}
