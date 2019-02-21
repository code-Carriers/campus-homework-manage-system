package com.action;

import java.util.*;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UserBiz;

public class UserAction  extends ActionSupport{
	private int uid;
	private User user;
	private UserBiz userBiz;
	private Admin admin;
	//��¼��֤		
		public String login() throws Exception {
		    //�û���¼��֤	
			List list=userBiz.searchUser(user);
			if(list.size()>0){
				//���û��������Session
				User user1=(User) list.get(0);
				Map session=ActionContext.getContext().getSession();
				session.put("user",user1);			
				return "success";  
			}
			else{
				this.addFieldError("login","�û������������");
				return "fail";
			}
		}
	//�˳���¼		
		public String logout() throws Exception {
			Map session=ActionContext.getContext().getSession();
			session.remove("user");			
			return "success"; 
		}
	//�û�ע��
		public String register() throws Exception {				
			userBiz.register(user);
			return "success";
		}
	//����Ա��¼��֤		
				public String adminLogin() throws Exception {
				    //�û���¼��֤	
					List list=userBiz.adminLogin(admin);
					if(list.size()>0){
						//���û��������Session
						Admin admin1=(Admin) list.get(0);
						Map session=ActionContext.getContext().getSession();
						session.put("admin",admin1);			
						return "success";  
					}
					else{
						this.addFieldError("login","�û������������");
						return "fail";
					}
				}
	//����Ա�˳���¼		
			public String logoutAdmin() throws Exception {
				Map session=ActionContext.getContext().getSession();
				session.remove("admin");			
				return "success"; 
			}			
	//�鿴�����û�
			public String query_user() throws Exception {				
				List users=userBiz.getAllUser();
				Map session=ActionContext.getContext().getSession();
				session.put("users",users);	
				return "success";
			}	
	//ɾ���û�
			public String delete_user() throws Exception {				
				userBiz.deleteUser(uid);
				return "success";
			}
	//ע��	
		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		public UserBiz getUserBiz() {
			return userBiz;
		}

		public void setUserBiz(UserBiz userBiz) {
			this.userBiz = userBiz;
		}

		public Admin getAdmin() {
			return admin;
		}

		public void setAdmin(Admin admin) {
			this.admin = admin;
		}

		public int getUid() {
			return uid;
		}

		public void setUid(int uid) {
			this.uid = uid;
		}
		
		
	
}
