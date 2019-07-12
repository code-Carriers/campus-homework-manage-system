package com.action;

import java.util.*;

import com.biz.*;
import com.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AnnounceAction extends ActionSupport {

	AnnounceBiz announceBiz;

	public AnnounceBiz getAnnounceBiz() {
		return announceBiz;
	}

	public void setAnnounceBiz(AnnounceBiz announceBiz) {
		this.announceBiz = announceBiz;
	}
	ClassBiz classBiz;
	
	public ClassBiz getClassBiz() {
		return classBiz;
	}

	public void setClassBiz(ClassBiz classBiz) {
		this.classBiz = classBiz;
	}
	Announce announce;

	public Announce getAnnounce() {
		return announce;
	}

	public void setAnnounce(Announce announce) {
		this.announce = announce;
	}
	private int aid;
	private int classid;
	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}
	public int getClassid() {
		return classid;
	}

	public void setClassid(int classid) {
		this.classid = classid;
	}
	public Integer currentPage=1;
	
	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public String addAnnounce() throws Exception{
		announce.setTime(new Date());
		System.out.println(classid);
		Courseclass c=classBiz.searchoneClass(classid);
		announce.setCourseclass(c);
		announceBiz.addAnnounce(announce);
		return SUCCESS;
	}
	public String deleteAnnounce() throws Exception{
		announceBiz.deleteAnnounce(aid);
		return SUCCESS;
	}
	public String searchAnnounceByTea() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Teacher teacher=(Teacher) session.get("teacher");
		int totalSize=announceBiz.getTotalAnnounceByTea(teacher.getTid());
		Pager pager=new Pager(currentPage,totalSize);
		List announcebytea=announceBiz.searchAnnounceByTea(teacher.getTid(), currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("announcebytea", announcebytea);
		return SUCCESS;
	}
	public String searchAnnounceByStu() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Student student=(Student) session.get("student");
		List announcebystu=announceBiz.searchAnnounceByStu(student.getSid());
		session.put("announcebystu", announcebystu);
		if(announcebystu.size()>0){
			Announce a=(Announce) announcebystu.get(0);
			System.out.println(a.getCourseclass().getName());
		}
		return SUCCESS;
	}
	public String queryannounce() throws Exception{
		Map session=ActionContext.getContext().getSession();
		int totalSize=announceBiz.getTotalAnnounce();
		Pager pager=new Pager(currentPage,totalSize);
		List announces=announceBiz.queryAnnounce(currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("announces", announces);
		if(announces.size()>0){
			Announce a=(Announce) announces.get(0);
			System.out.println(a.getCourseclass().getTeacher().getName());
		}
		return SUCCESS;
	}
	public String deleteannounce() throws Exception{
		announceBiz.deleteAnnounce(aid);
		return "input";
	}
}
