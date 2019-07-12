package com.biz.impl;

import java.util.List;

import com.biz.ClassBiz;
import com.dao.ClassDAO;
import com.entity.Courseclass;
import com.entity.Studentclass;

public class ClassBizImpl implements ClassBiz {
	ClassDAO classDAO;
	
	public ClassDAO getClassDAO() {
		return classDAO;
	}

	public void setClassDAO(ClassDAO classDAO) {
		this.classDAO = classDAO;
	}

	@Override
	public List showClassByTea(int tid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return classDAO.showClassByTea(tid, currentPage, pageSize);
	}
	@Override
	public List showClassByStu(int sid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return classDAO.showClassByStu(sid,currentPage, pageSize);
	}
	@Override
	public void createClass(Courseclass courseclass) {
		// TODO Auto-generated method stub
		classDAO.createClass(courseclass);
	}

	@Override
	public List showClassByName(String name) {
		// TODO Auto-generated method stub
		return classDAO.showClassByName(name);
	}

	@Override
	public void joinClass(Studentclass studentclass) {
		// TODO Auto-generated method stub
		classDAO.joinClass(studentclass);
	}

	@Override
	public Courseclass searchoneClass(int classid) {
		// TODO Auto-generated method stub
		return classDAO.searchoneClass(classid);
	}

	@Override
	public void exitClass(int studentclassid) {
		// TODO Auto-generated method stub
		classDAO.exitClass(studentclassid);
	}

	@Override
	public void deleteClass(int classid) {
		// TODO Auto-generated method stub
		classDAO.deleteClass(classid);
	}

	@Override
	public int getTotalByTea(int tid) {
		// TODO Auto-generated method stub
		return classDAO.getTotalByTea(tid);
	}

	@Override
	public int getTotalByStu(int sid) {
		// TODO Auto-generated method stub
		return classDAO.getTotalByStu(sid);
	}

	@Override
	public List showClassByTeaName(String teaName) {
		// TODO Auto-generated method stub
		return classDAO.showClassByTeaName(teaName);
	}

	@Override
	public List getClassByStu(int sid) {
		// TODO Auto-generated method stub
		return classDAO.getClassByStu(sid);
	}

	@Override
	public Studentclass getStuClass(int tid, int classid) {
		// TODO Auto-generated method stub
		return classDAO.getStuClass(tid, classid);
	}

	@Override
	public List getClassStu(int classid) {
		// TODO Auto-generated method stub
		return classDAO.getClassStu(classid);
	}

	@Override
	public List queryClass(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return classDAO.queryClass(currentPage, pageSize);
	}

	@Override
	public int getTotalClass() {
		// TODO Auto-generated method stub
		return classDAO.getTotalClass();
	}

	@Override
	public List searchClassByTeaAndClass(int tid, String classname) {
		// TODO Auto-generated method stub
		return classDAO.searchClassByTeaAndClass(tid, classname);
	}

	@Override
	public List getAllByTea(int tid) {
		// TODO Auto-generated method stub
		return classDAO.getAllByTea(tid);
	}

}
