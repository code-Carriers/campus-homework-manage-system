package com;
import java.util.*;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private String lang;	
	public String getLang() {
		return lang;
	}
	public void setLang(String lang) {
		this.lang = lang;
	}
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String lang() throws Exception {
	        Locale locale = null;
	        System.out.println("lang:"+lang);
	        if (lang.equals("zh")) {
	            // 显示中文
	            locale = Locale.CHINA;
	            System.out.println("======" + lang+locale);
	        } else {
	            // 显示英文
	            locale = Locale.US;
	        }
	        ActionContext.getContext().setLocale(locale);                                    
	        ServletActionContext.getRequest().getSession().setAttribute("WW_TRANS_I18N_LOCALE", locale);
	        return SUCCESS;	  
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(username.equals("root")&&password.equals("123456"))
			return SUCCESS;
		else 
			return "input";
	}
}

