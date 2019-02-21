package com.dao;

import java.util.List;

import com.entity.*;

public interface IUserDAO {
	public List searchUser(User u);
	public void register(User u);
	public List adminLogin(Admin a);
	public List getAllUser();
	public void deleteUser(int uid);
}
