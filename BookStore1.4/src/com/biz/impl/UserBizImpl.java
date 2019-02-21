package com.biz.impl;

import java.util.List;

import com.biz.UserBiz;
import com.dao.UserDAO;
import com.entity.Admin;
import com.entity.User;

public class UserBizImpl implements UserBiz {

	UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}

	@Override
	public List searchUsers(User condition) {
		return userDAO.searchUsers(condition);
	}

	//添加用户
	@Override
	public void addUsers(User users) {
		userDAO.addUsers(users);		
	}

	
	//修改个人信息
	@Override
	public void modifyUsers(User users) {
		userDAO.modifyUsers(users);
	}

	@Override
	public List searchAdmin(Admin condition) {
		// TODO Auto-generated method stub
		return userDAO.searchAdmin(condition);
	}
}
