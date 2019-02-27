package com;

import com.opensymphony.xwork2.ActionSupport;

public class changepwAction extends ActionSupport{

	public changepwAction() {
		// TODO Auto-generated constructor stub
	}
	private String username;
	private String oldpassword;
	private String newpassword;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getOldpassword() {
		return oldpassword;
	}
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(username.equals("root")&&oldpassword.equals("123456")&&!newpassword.equals(""))
			return SUCCESS;
		else
			return "input";
	}
	
}
