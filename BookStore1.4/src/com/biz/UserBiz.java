package com.biz;

import java.util.List;

import com.entity.Admin;
import com.entity.User;

public interface UserBiz {
	//�û���¼��֤
	public List searchUsers(User condition);
	
	//�����û�
	public void addUsers(User users);
	
	//�޸ĸ�����Ϣ
	public void modifyUsers(User users);
	//����Ա��¼
		public List searchAdmin(Admin condition);
}