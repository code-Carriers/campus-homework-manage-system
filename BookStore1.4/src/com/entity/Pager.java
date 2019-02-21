package com.entity;

public class Pager {

	private int currentPage;
	private int pageSize=5;
	private int totalSize;
	private int totalPage;
	
	private boolean hasFirst;
	private boolean hasLast;
	private boolean hasprevious;
	private boolean hasNext;
	
	public Pager(int currentPage,int totalSize){
		this.currentPage=currentPage;
		this.totalSize=totalSize;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrenPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalSize() {
		return totalSize;
	}
	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}
	public int getTotalPage() {
		totalPage=totalSize/pageSize;
		if(totalSize%pageSize!=0)
			totalPage++;
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public boolean isHasFirst() {
		if(currentPage==1)
			return false;
		return true;
	}
	public void setHasFirst(boolean hasFirst) {
		this.hasFirst = hasFirst;
	}
	public boolean isHasLast() {
		if(currentPage==getTotalPage())
			return false;
		return true;
	}
	public void setHasLast(boolean hasLast) {
		this.hasLast = hasLast;
	}
	public boolean isHasprevious() {
		if(isHasFirst())
			return true;
		return false;
	}
	public void setHasprevious(boolean hasprevious) {
		this.hasprevious = hasprevious;
	}
	public boolean isHasNext() {
		if(isHasLast())
			return true;
		return false;
	}
	public void setHasNext(boolean hasNext) {
		this.hasNext = hasNext;
	}
	
}
