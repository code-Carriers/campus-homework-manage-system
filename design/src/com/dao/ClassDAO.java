package com.dao;

import java.util.List;

import com.entity.Courseclass;
import com.entity.Studentclass;

public interface ClassDAO {
	public List queryClass(int currentPage, int pageSize);
	public int getTotalClass();
	public List showClassByName(String name);
	public List showClassByTeaName(String teaName);
	public List searchClassByTeaAndClass(int tid,String classname);
	public int getTotalByStu(int sid);
	public List getClassByStu(int sid);
	public List showClassByStu(int sid, int currentPage, int pageSize);
	public void createClass(Courseclass courseclass);
	public void joinClass(Studentclass studentclass);
	public Courseclass searchoneClass(int classid);
	public void exitClass(int studentclassid);
	public void deleteClass(int classid);
	public List showClassByTea(int tid, int currentPage, int pageSize);
	public int getTotalByTea(int tid);
	public List getAllByTea(int tid);
	public Studentclass getStuClass(int tid,int classid);
	public List getClassStu(int classid);
}
