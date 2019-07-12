package com.action;

import java.util.*;

import org.apache.commons.collections.map.HashedMap;

import com.biz.*;
import com.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ClassAction  extends ActionSupport{
	UserBiz userBiz;
	ClassBiz classBiz;
	WorkBiz workBiz;
	QuestionBiz questionBiz;
	public ClassBiz getClassBiz() {
		return classBiz;
	}

	public void setClassBiz(ClassBiz classBiz) {
		this.classBiz = classBiz;
	}
	
	public WorkBiz getWorkBiz() {
		return workBiz;
	}

	public void setWorkBiz(WorkBiz workBiz) {
		this.workBiz = workBiz;
	}

	public QuestionBiz getQuestionBiz() {
		return questionBiz;
	}

	public void setQuestionBiz(QuestionBiz questionBiz) {
		this.questionBiz = questionBiz;
	}

	public UserBiz getUserBiz() {
		return userBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	AnnounceBiz announceBiz;
	
	public AnnounceBiz getAnnounceBiz() {
		return announceBiz;
	}

	public void setAnnounceBiz(AnnounceBiz announceBiz) {
		this.announceBiz = announceBiz;
	}
	private Courseclass courseclass;
	
	public Courseclass getCourseclass() {
		return courseclass;
	}

	public void setCourseclass(Courseclass courseclass) {
		this.courseclass = courseclass;
	}
	private String classname;
	
	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}
	private int classid;
	
	public int getClassid() {
		return classid;
	}

	public void setClassid(int classid) {
		this.classid = classid;
	}
	public Integer currentPage=1;
	
	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public int studentclassid;
	
	public int getStudentclassid() {
		return studentclassid;
	}

	public void setStudentclassid(int studentclassid) {
		this.studentclassid = studentclassid;
	}
	public String teaName;
	public int tid;
	public String getTeaName() {
		return teaName;
	}

	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	//根据教师分页查询所有班级
	public String showClassByTea() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Teacher teacher=(Teacher) session.get("teacher");
		int totalSize=classBiz.getTotalByTea(teacher.getTid());
		Pager pager=new Pager(currentPage,totalSize);
		List classes=classBiz.showClassByTea(teacher.getTid(), currentPage, pager.getPageSize());
		session.put("classbytea", classes);
		session.put("pager", pager);
		return SUCCESS;
	}
	//根据教师查询所有班级
		public String getAllClassByTea() throws Exception{
			Map session=ActionContext.getContext().getSession();
			Teacher teacher=(Teacher) session.get("teacher");
			List classes=classBiz.getAllByTea(teacher.getTid());
			session.put("classbytea", classes);
			return SUCCESS;
		}
	//根据班名查找班级
	public String showClassByClassName() throws Exception{
		List classbyname=classBiz.showClassByName(classname);
		Map session=ActionContext.getContext().getSession();
		session.put("classbyname", classbyname);
		Student s=(Student) session.get("student");
		if(s!=null){
			List stuClass=classBiz.getClassByStu(s.getSid());
		Courseclass class1,class2;
		for(int i=0;i<classbyname.size();i++){
			class1=(Courseclass) classbyname.get(i);
			class1.setB(false);
			for(int j=0;j<stuClass.size();j++){
				class2=(Courseclass)stuClass.get(j);
				if(class1.getClassid()==class2.getClassid()){
					class1.setB(true);
					break;
				}
			}
			System.out.println(class1.getClassid()+","+class1.getB());
		}
		}
		return SUCCESS;
	}
	//根据教师名字查找班级
	public String showClassByTeaName() throws Exception{
		List classbyname=classBiz.showClassByTeaName(teaName);
		Map session=ActionContext.getContext().getSession();
		session.put("classbyname", classbyname);
		Student s=(Student) session.get("student");
		List stuClass=classBiz.getClassByStu(s.getSid());
		Map<Integer,Boolean> judgeClass = new HashMap<Integer,Boolean>();
		Courseclass class1,class2;
		for(int i=0;i<classbyname.size();i++){
			class1=(Courseclass) classbyname.get(i);
			class1.setB(false);
			for(int j=0;j<stuClass.size();j++){
				class2=(Courseclass)stuClass.get(j);
				if(class1.getClassid()==class2.getClassid()){
					class1.setB(true);
					break;
				}
			}
			System.out.println(class1.getClassid()+","+class1.getB());
		}
		return SUCCESS;
	}
	//根据学生分页查找班级
	public String showClassByStu() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Student student=(Student)session.get("student");
		int totalSize=classBiz.getTotalByStu(student.getSid());
		Pager pager=new Pager(currentPage,totalSize);
		List classbystu=classBiz.showClassByStu(student.getSid(),currentPage, pager.getPageSize());		
		session.put("classbystu", classbystu);
		session.put("pager", pager);
		return SUCCESS;
	}
	//根据学生查询所有班级
			public String getAllClassByStu() throws Exception{
				Map session=ActionContext.getContext().getSession();
				Student student=(Student)session.get("student");
				List classes=classBiz.getClassByStu(student.getSid());
				session.put("classbystu", classes);
				return SUCCESS;
			}
	//创建班级
	public String createClass() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Teacher teacher=(Teacher) session.get("teacher");
		List classExist=classBiz.searchClassByTeaAndClass(teacher.getTid(), courseclass.getName());
		if(classExist.size()>0){
			this.addFieldError("classExist", "您已创建过该班级");
			return "input";
		}
		courseclass.setTeacher(teacher);
		courseclass.setCreate_time(new Date());
		classBiz.createClass(courseclass);
		/*currentPage=1;
		int totalSize=classBiz.getTotalByTea(teacher.getTid());
		Pager pager=new Pager(currentPage,totalSize);
		List classes=classBiz.showClassByTea(teacher.getTid(),currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("classbytea", classes);*/
		return SUCCESS;
	}
	//加入班级
	public String joinClass() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Student student=(Student) session.get("student");
		Courseclass c=classBiz.searchoneClass(classid);
		Studentclass newstuClass=new Studentclass();
		newstuClass.setCourseclass(c);
		newstuClass.setStudent(student);
		System.out.println(c.getName()+" "+student.getName());
		classBiz.joinClass(newstuClass);
		/*currentPage=1;
		int totalSize=classBiz.getTotalByStu(student.getSid());
		Pager pager=new Pager(currentPage,totalSize);
		List classbystu=classBiz.showClassByStu(student.getSid(),currentPage, pager.getPageSize());		
		session.put("classbystu", classbystu);
		session.put("pager", pager);*/
		return SUCCESS;
	}
	//查看班级详情
	public String classDetail() throws Exception{
		Courseclass c=classBiz.searchoneClass(classid);
		Map session=ActionContext.getContext().getSession();
		session.put("classDetail", c);
		List classNum=classBiz.getClassStu(classid);
		session.put("classNum", classNum);
		Announce newAnnounce=announceBiz.getOneAnnounce(classid);
		session.put("newAnnounce", newAnnounce);
		List classAnnounce=announceBiz.getClassAnnounce(classid);
		session.put("classAnnounce", classAnnounce);
		List work=workBiz.searchWorkByClass(classid);
		session.put("works", work);
		List classQuestion=questionBiz.searchQuestionByClass(classid);
		session.put("classQuestion", classQuestion);
		return SUCCESS;
	}
	//判断学生是否已加入班级
	public String stuClassDetail() throws Exception{
		Courseclass c=classBiz.searchoneClass(classid);
		Map session=ActionContext.getContext().getSession();
		session.put("classDetail", c);	
		List classNum=classBiz.getClassStu(classid);
		session.put("classNum", classNum);
		System.out.println(c.getTeacher().getName()+","+classNum);
		Student s=(Student) session.get("student");
		Studentclass sc=classBiz.getStuClass(s.getSid(), classid);
		session.put("sc", sc);
		List work=workBiz.searchWorkByClass(classid);
		session.put("works", work);
		List classQuestion=questionBiz.searchQuestionByClass(classid);
		session.put("classQuestion", classQuestion);
		return SUCCESS;
	}
	//老师解散班级
	public String deleteClass() throws Exception{
			
		classBiz.deleteClass(classid);
		/*Map session=ActionContext.getContext().getSession();
		Teacher teacher=(Teacher) session.get("teacher");
		currentPage=1;
		int totalSize=classBiz.getTotalByTea(teacher.getTid());
		Pager pager=new Pager(currentPage,totalSize);
		List classes=classBiz.showClassByTea(teacher.getTid(),currentPage, pager.getPageSize());
		session.put("classbytea", classes);
		session.put("pager", pager);*/
		return SUCCESS;
	}
	//学生退出班级
	public String exitClass() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Student student=(Student) session.get("student");
		Studentclass sc=classBiz.getStuClass(student.getSid(), classid);
		classBiz.exitClass(sc.getStudentclassid());
		return SUCCESS;
	}
	//查看全部班级
	public String queryclass() throws Exception{
		Map session=ActionContext.getContext().getSession();
		int totalSize=classBiz.getTotalClass();
		Pager pager=new Pager(currentPage,totalSize);
		List classes=classBiz.queryClass(currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("classes",classes);
		return SUCCESS;
	}
	public String addclass() throws Exception{
		Teacher teacher=userBiz.getTeacher(tid);
		courseclass.setTeacher(teacher);
		classBiz.createClass(courseclass);
		return "input";
	}
	public String deleteclass() throws Exception{
		classBiz.deleteClass(classid);
		return "input";
	}
}
