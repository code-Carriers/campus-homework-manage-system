package com.biz.impl;

import java.util.List;

import com.biz.UserBiz;
import com.dao.UserDAO;
import com.entity.*;

public class UserBizImpl implements UserBiz {

	UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}

	@Override
	public List searchStu(Student condition) {
		// TODO Auto-generated method stub
		return userDAO.searchStu(condition);
	}

	@Override
	public void addStu(Student users) {
		// TODO Auto-generated method stub
		userDAO.addStu(users);
	}

	@Override
	public void modifyStu(Student users) {
		// TODO Auto-generated method stub
		userDAO.modifyStu(users);
	}

	@Override
	public boolean searchStu(String email) {
		// TODO Auto-generated method stub
		return userDAO.searchStu(email);
	}

	@Override
	public List searchTea(Teacher condition) {
		// TODO Auto-generated method stub
		return userDAO.searchTea(condition);
	}

	@Override
	public boolean searchTea(String email) {
		// TODO Auto-generated method stub
		return userDAO.searchTea(email);
	}

	@Override
	public void addTea(Teacher users) {
		// TODO Auto-generated method stub
		userDAO.addTea(users);
	}

	@Override
	public void modifyTea(Teacher users) {
		// TODO Auto-generated method stub
		userDAO.modifyTea(users);
	}

	@Override
	public List queryStudent(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return userDAO.queryStudent(currentPage, pageSize);
	}

	@Override
	public List queryTeacher(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return userDAO.queryTeacher(currentPage, pageSize);
	}

	@Override
	public int getTotalStudent() {
		// TODO Auto-generated method stub
		return userDAO.getTotalStudent();
	}

	@Override
	public int getTotalTeacher() {
		// TODO Auto-generated method stub
		return userDAO.getTotalTeacher();
	}

	@Override
	public void deleteStudent(int sid) {
		// TODO Auto-generated method stub
		userDAO.deleteStudent(sid);
	}

	@Override
	public void deleteTeacher(int tid) {
		// TODO Auto-generated method stub
		userDAO.deleteTeacher(tid);
	}

	@Override
	public List getAllTeacher() {
		// TODO Auto-generated method stub
		return userDAO.getAllTeacher();
	}

	@Override
	public Teacher getTeacher(int tid) {
		// TODO Auto-ogenerated method stub
		return userDAO.getTeacher(tid);
	}

	@Override
	public Student getStudent(int sid) {
		// TODO Auto-generated method stub
		return userDAO.getStudent(sid);
	}

	@Override
	public void modifyStuPass(String password, String email) {
		// TODO Auto-generated method stub
		userDAO.modifyStuPass(password, email);
	}

	@Override
	public void modifyTeaPass(String password, String email) {
		// TODO Auto-generated method stub
		userDAO.modifyTeaPass(password, email);
	}
}
