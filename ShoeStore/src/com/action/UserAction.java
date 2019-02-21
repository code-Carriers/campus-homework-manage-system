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
	//登录验证		
		public String login() throws Exception {
		    //用户登录验证	
			List list=userBiz.searchUser(user);
			if(list.size()>0){
				//将用户对象存入Session
				User user1=(User) list.get(0);
				Map session=ActionContext.getContext().getSession();
				session.put("user",user1);			
				return "success";  
			}
			else{
				this.addFieldError("login","用户名或密码错误");
				return "fail";
			}
		}
	//退出登录		
		public String logout() throws Exception {
			Map session=ActionContext.getContext().getSession();
			session.remove("user");			
			return "success"; 
		}
	//用户注册
		public String register() throws Exception {				
			userBiz.register(user);
			return "success";
		}
	//管理员登录验证		
				public String adminLogin() throws Exception {
				    //用户登录验证	
					List list=userBiz.adminLogin(admin);
					if(list.size()>0){
						//将用户对象存入Session
						Admin admin1=(Admin) list.get(0);
						Map session=ActionContext.getContext().getSession();
						session.put("admin",admin1);			
						return "success";  
					}
					else{
						this.addFieldError("login","用户名或密码错误");
						return "fail";
					}
				}
	//管理员退出登录		
			public String logoutAdmin() throws Exception {
				Map session=ActionContext.getContext().getSession();
				session.remove("admin");			
				return "success"; 
			}			
	//查看所有用户
			public String query_user() throws Exception {				
				List users=userBiz.getAllUser();
				Map session=ActionContext.getContext().getSession();
				session.put("users",users);	
				return "success";
			}	
	//删除用户
			public String delete_user() throws Exception {				
				userBiz.deleteUser(uid);
				return "success";
			}
	//注入	
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
