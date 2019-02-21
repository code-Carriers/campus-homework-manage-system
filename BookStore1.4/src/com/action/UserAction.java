package com.action;

import java.util.*;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.biz.*;
import com.entity.*;

public class UserAction extends ActionSupport{
	//封装登录表单参数
	private  User user;	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	private Admin admin;
	
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	UserBiz userBiz;	
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	
    public UserBiz getUserBiz() {
		return userBiz;
	}
  
	//登录验证		
	public String login() throws Exception {
	    //用户登录验证
		User condition=new User();
		condition.setUsername(user.getUsername());
		condition.setPassword(user.getPassword());	
		List list=userBiz.searchUsers(condition);
		if(list.size()>0){
			//将用户对象存入Session
			User user=(User) list.get(0);
			Map session=ActionContext.getContext().getSession();
			session.put("user",user );			
			return "success";  
		}
		else{
			this.addFieldError("login","用户名或密码错误");
			return "fail";
		}
	}
	//管理员登录验证		
		public String adminLogin() throws Exception {
		    //用户登录验证
			Admin admin1=new Admin();
			admin1.setUsername(admin.getUsername());
			admin1.setPassword(admin.getPassword());	
			List list=userBiz.searchAdmin(admin1);
			if(list.size()>0){
				//将用户对象存入Session
				Admin admin=(Admin)list.get(0);
				Map session=ActionContext.getContext().getSession();
				session.put("admin",admin );			
				return "success";  
			}
			else{
				//this.addFieldError("login","用户名或密码错误");
				return "fail";
			}
		}
	//用户注销
		public String logout() throws Exception {
			Map session=ActionContext.getContext().getSession();
			session.remove("user");
			return SUCCESS;
		}
	//用户注册
	public String register() throws Exception {
		User condition=new User();
		condition.setUsername(user.getUsername());
		condition.setPassword(user.getPassword());	
		userBiz.addUsers(condition);
		return "show";
	}
	
	//修改个人信息
	public String modifyUsers() throws Exception {
		userBiz.modifyUsers(user);
		return "show";
	}
	
}
