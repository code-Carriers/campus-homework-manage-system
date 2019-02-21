package com.service.impl;

import java.util.List;

import com.dao.IUserDAO;
import com.entity.Admin;
import com.entity.User;
import com.service.UserBiz;

public class UserBizImpl implements UserBiz {

	IUserDAO userDAO;
	
	public IUserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public List searchUser(User u) {
		// TODO Auto-generated method stub
		return userDAO.searchUser(u);
	}

	@Override
	public void register(User u) {
		// TODO Auto-generated method stub
		userDAO.register(u);
	}

	@Override
	public List adminLogin(Admin a) {
		// TODO Auto-generated method stub
		return userDAO.adminLogin(a);
	}

	@Override
	public List getAllUser() {
		// TODO Auto-generated method stub
		return userDAO.getAllUser();
	}

	@Override
	public void deleteUser(int uid) {
		// TODO Auto-generated method stub
		userDAO.deleteUser(uid);
	}

}
