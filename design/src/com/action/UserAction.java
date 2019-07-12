package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.biz.*;
import com.entity.*;

public class UserAction extends ActionSupport{
	//封装登录表单参数
	private Student student;		
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	private Teacher teacher;	
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	UserBiz userBiz;	
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}	
    public UserBiz getUserBiz() {
		return userBiz;
	}
    
    private String message;   
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	private String email;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public Integer currentPage=1;
	
	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	int tid,sid;
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	String classify;
	
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
	}

	private File photo;	
	public File getPhoto() {
		return photo;
	}
	public void setPhoto(File photo) {
		this.photo = photo;
	}
	private String photoFileName;
	public String getPhotoFileName() {
		return photoFileName;
	}
	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}
	//登录验证		
	public String stuLogin() throws Exception {
	    //用户登录验证	
		System.out.println(student.getEmail()+", "+student.getPassword());
		List list=userBiz.searchStu(student);
		if(list.size()>0){
			//将用户对象存入Session
			Student user=(Student) list.get(0);
			Map session=ActionContext.getContext().getSession();
			session.put("student",user);			
			return "success";  
		}
		else{
			this.addFieldError("login","用户名或密码错误");
			return "fail";
		}
	}
	public String teaLogin() throws Exception {
	    //用户登录验证	
		List list=userBiz.searchTea(teacher);
		if(list.size()>0){
			//将用户对象存入Session
			Teacher user=(Teacher) list.get(0);
			Map session=ActionContext.getContext().getSession();
			session.put("teacher",user);			
			return "success";  
		}
		else{
			this.addFieldError("login","用户名或密码错误");
			return "fail";
		}
	}
	public String adminLogin() throws Exception {
	    //用户登录验证			
		if(this.getUsername().equals("admin") && this.getPassword().equals("admin")){
			Map session=ActionContext.getContext().getSession();
			session.put("admin","admin");			
			return SUCCESS;  
		}
		else{
			this.addFieldError("adminlogin","管理员用户名或密码错误");
			return "fail";
		}
	}
	//教师用户注销
		public String teaLogout() throws Exception {
			Map session=ActionContext.getContext().getSession();
			session.remove("teacher");
			return SUCCESS;
		}
	//学生退出登录
		public String stuLogout() throws Exception {
			Map session=ActionContext.getContext().getSession();
			session.remove("student");
			return SUCCESS;
		}
	//管理员退出登录
		public String adminLogout() throws Exception {
			Map session=ActionContext.getContext().getSession();
			session.remove("admin");
			return SUCCESS;
		}
	//查找学生
		public String searchStu() throws Exception{
			if(!userBiz.searchStu(email))
				this.message = "该用户名可以使用";
			else{
				this.message = "该用户名已经存在";
			}			
			return "success";
		
		}
		public String searchTea() throws Exception{
			if(!userBiz.searchTea(email))
				this.message = "该用户名可以使用";
			else{
				this.message = "该用户名已经存在";
			}			
			return "success";		
		}
		
	//学生注册
	public String stuRegister() throws Exception {	
		if(this.getPhoto()!=null){
			this.savePhoto(photoFileName);			
			student.setPhoto(photoFileName);
		}
		else student.setPhoto("photo2.jpg");
		userBiz.addStu(student);
		return "success";
	}
	public String teaRegister() throws Exception {	
		if(this.getPhoto()!=null){
			this.savePhoto(photoFileName);			
			teacher.setPhoto(photoFileName);
		}
		else teacher.setPhoto("photo1.jpg");
		userBiz.addTea(teacher);
		return "success";
	}
	
	//修改个人信息
	public String modifyInform() throws Exception {
		userBiz.modifyStu(student);
		Map session=ActionContext.getContext().getSession();
		session.put("student",student);
		return "success";
	}
	public String modifyTeaInform() throws Exception {
		userBiz.modifyTea(teacher);
		Map session=ActionContext.getContext().getSession();
		session.put("teacher",teacher);
		return "success";
	}
	
	public String querystudent() throws Exception{
		Map session=ActionContext.getContext().getSession();
		int totalSize=userBiz.getTotalStudent();
		Pager pager=new Pager(currentPage,totalSize);
		List students=userBiz.queryStudent(currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("students",students);
		return SUCCESS;
	}
	public String queryteacher() throws Exception{
		Map session=ActionContext.getContext().getSession();
		int totalSize=userBiz.getTotalTeacher();
		Pager pager=new Pager(currentPage,totalSize);
		List teachers=userBiz.queryTeacher(currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("teachers",teachers);
		return SUCCESS;
	}
	public String deletestudent() throws Exception{
		userBiz.deleteStudent(sid);
		return "input";
	}
	public String deleteteacher() throws Exception{
		userBiz.deleteTeacher(tid);
		return "input";
	}
	public String addstudent() throws Exception{
		//photo
		if(this.getPhoto()!=null){
			this.savePhoto(photoFileName);			
			student.setPhoto(photoFileName);
		}
		else student.setPhoto("photo2.jpg");
		userBiz.addStu(student);
		return "input";
	}
	public String addteacher() throws Exception{
		if(this.getPhoto()!=null){
			this.savePhoto(photoFileName);			
			teacher.setPhoto(photoFileName);
		}
		else teacher.setPhoto("photo1.jpg");
		userBiz.addTea(teacher);
		return "input";
	}
	public String modifystudent() throws Exception{
		userBiz.modifyStu(student);
		return "input";
	}
	public String modifyteacher() throws Exception{
		userBiz.modifyTea(teacher);
		return "input";
	}
	public String getAllTeacher() throws Exception{
		List teachers=userBiz.getAllTeacher();
		Map session=ActionContext.getContext().getSession();
		session.put("allTeacher",teachers);
		System.out.println("teacher amount"+teachers.size());
		return SUCCESS;
	}
	public String forgetPass() throws Exception{
		if(classify.equals("teacher"))
			if(userBiz.searchTea(email)){
				userBiz.modifyTeaPass(password, email);
				return "teacher";
			}
		if(classify.equals("student"))
			if(userBiz.searchStu(email)){
				userBiz.modifyStuPass(password, email);
				return "student";
			}
		this.addFieldError("forgetPassword", "账号不存在");
		return "input";
	}
	public void savePhoto(String savefileName) throws IOException{
		//获得要存放图片的绝对路径
		String realpath = ServletActionContext.getServletContext().getRealPath("/photo");
		System.out.println(realpath);
		//在路径下创建上传的文件
		File savefile = new File(new File(realpath),savefileName);		
		if(!savefile.getParentFile().exists()){
				//如果路径不存在，则创建一个
				savefile.getParentFile().mkdirs();
		}		//把上传的文件保存在路径中
				FileUtils.copyFile(photo, savefile);
				System.out.println("\n上传成功");			
					
	}
}
