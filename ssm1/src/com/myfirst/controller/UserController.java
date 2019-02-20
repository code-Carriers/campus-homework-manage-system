package com.myfirst.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myfirst.pojo.User;
import com.myfirst.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;

	
	  @RequestMapping(value="login.action") 
	  public ModelAndView login(User user) {
	  System.out.println(user.getName()+" "+user.getPassword());
	  ModelAndView mav =  new ModelAndView();
	  User newuser = userService.login(user); 
	  if (newuser !=  null) { 
		  // ����ת������
		  mav.addObject("newuser", newuser);
		 // ����jsp·��
	  mav.setViewName("index");
	  
	  } else mav.setViewName("login"); return mav; }
	 
	@RequestMapping(value= "register.action")
	public ModelAndView register(User user) {
		ModelAndView mav = new ModelAndView();
		if(user.getName().equals("")||user.getPassword().equals(""))
			mav.setViewName("register");
			
		else {
			userService.register(user);
			// ����jsp·��
			mav.setViewName("login");
		 } 
		return mav;
	}
}
