package com.service;

import java.util.List;

import com.entity.Admin;
import com.entity.User;

public interface UserBiz {

	public List searchUser(User u);
	public void register(User u);
	public List adminLogin(Admin a);
	public List getAllUser();
	public void deleteUser(int uid);
}
