package com.dao;

import java.util.List;

import com.entity.Admin;
import com.entity.User;

public interface UserDAO {
	//用户登录验证
	public List searchUsers(User condition);
	
	//添加用户
	public void addUsers(User users);
	
	//修改个人信息
	public void modifyUsers(User users);
	//管理员登录
	public List searchAdmin(Admin condition);
}
