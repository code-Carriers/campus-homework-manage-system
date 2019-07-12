package com.action;

import java.io.*;
import java.text.*;
import java.util.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.biz.*;
import com.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class WorkAction extends ActionSupport{

	WorkBiz workBiz;
	UserBiz userBiz;
	public WorkBiz getWorkBiz() {
		return workBiz;
	}

	public void setWorkBiz(WorkBiz workBiz) {
		this.workBiz = workBiz;
	}
	public UserBiz getUserBiz() {
		return userBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	private Work work;

	public Work getWork() {
		return work;
	}

	public void setWork(Work work) {
		this.work = work;
	}
	private Studentwork studentwork;
	
	public Studentwork getStudentwork() {
		return studentwork;
	}

	public void setStudentwork(Studentwork studentwork) {
		this.studentwork = studentwork;
	}
	private int classid;

	public int getClassid() {
		return classid;
	}

	public void setClassid(int classid) {
		this.classid = classid;
	}
	ClassBiz classBiz;
	
	public ClassBiz getClassBiz() {
		return classBiz;
	}

	public void setClassBiz(ClassBiz classBiz) {
		this.classBiz = classBiz;
	}
	private int workid;
	private float score;
	private int studentworkid;
	private int sid,tid;
	public int getWorkid() {
		return workid;
	}

	public void setWorkid(int workid) {
		this.workid = workid;
	}
	
	public float getScore() {
		return score;
	}

	public void setScore(float score) {
		this.score = score;
	}

	public int getStudentworkid() {
		return studentworkid;
	}

	public void setStudentworkid(int studentworkid) {
		this.studentworkid = studentworkid;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}
	public Integer currentPage=1;
	
	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	 private File appendix;//文件
	 private String appendixFileName;//文件名称 
	 private String appendixContentType; //文件类型 
	 private String filename;//下载的文件名
	 private InputStream inputStream;
	 //savepath为作业上传保存的绝对路径
	 /*String savepath="D:/Users/Administrator/Workspaces/MyEclipse 2017 CI/design/WebRoot/work";*/
	 String savepath= ServletActionContext.getServletContext().getRealPath("/work");
	 //stuWorkPath为学生作业上传的绝对路径
	 /*String stuWorkPath="D:\\Users\\Administrator\\Workspaces\\MyEclipse 2017 CI\\design\\WebRoot\\stuWork";*/
	 String stuWorkPath=ServletActionContext.getServletContext().getRealPath("/stuWork");
	 public File getAppendix() {
		return appendix;
	}

	public void setAppendix(File appendix) {
		this.appendix = appendix;
	}

	public String getAppendixFileName() {
		return appendixFileName;
	}

	public void setAppendixFileName(String appendixFileName) {
		this.appendixFileName = appendixFileName;
	}

	public String getAppendixContentType() {
		return appendixContentType;
	}

	public void setAppendixContentType(String appendixContentType) {
		this.appendixContentType = appendixContentType;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public String addWork() throws Exception{
		work.setStartdate(new Date());
		if(appendix!=null){
			DateFormat bf = new SimpleDateFormat("yyyy-MM-dd-HH-mm");
			String format = bf.format(work.getStartdate());//格式化 bf.format(date);
			System.out.println(format);
			String filename=format+appendixFileName;
			System.out.println(filename);
			File dir=new File(savepath); 
			//判断文件是否上传，如果上传的话将会创建该目录 
			if(!dir.exists()){ 
				dir.mkdir(); //创建该目录 
			} 
			try {
				File file=new File(dir, filename);			
				if(!file.exists()){
					file.createNewFile();
				}
			    FileUtils.copyFile(appendix,file); 
			}catch (IOException e) {
			   e.printStackTrace();
			} 
			work.setAppendix(appendixFileName);
		}
		
		Map session=ActionContext.getContext().getSession();
		Teacher teacher=(Teacher) session.get("teacher");
		Courseclass c=classBiz.searchoneClass(classid);
		work.setTeacher(teacher);
		work.setCourseclass(c);
		workBiz.addwork(work);
		return SUCCESS;
	}
	public String modifyWork() throws Exception{
		Work oldWork=workBiz.searchOneWork(workid);
			
		if(appendix!=null){
			DateFormat bf = new SimpleDateFormat("yyyy-MM-dd-HH-mm");
			String format = bf.format(oldWork.getStartdate());//格式化 bf.format(date);
			String filename=format+appendixFileName;
			File dir=new File(savepath); 
			//判断文件是否上传，如果上传的话将会创建该目录 
			if(!dir.exists()){ 
				dir.mkdir(); //创建该目录 
			} 
			try {
				if(oldWork.getAppendix()!=null){
					File oldFile=new File(dir,format+oldWork.getAppendix());
					if(oldFile.exists())
						if(oldFile.delete())
							System.out.println("delete file success");;
				}
				File file=new File(dir, filename);			
				if(!file.exists()){
					file.createNewFile();
				}
			    FileUtils.copyFile(appendix,file); 
			}catch (IOException e) {
			   e.printStackTrace();
			} 
			work.setAppendix(appendixFileName);
		}
		work.setCourseclass(classBiz.searchoneClass(classid));
		work.setTeacher(oldWork.getTeacher());
		workBiz.modifyWork(work);
		return SUCCESS;
	}
	public String submitWork() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Student student=(Student) session.get("student");
		studentwork.setStudent(student);
		System.out.println(workid);
		Work w=workBiz.searchOneWork(workid);
		studentwork.setWork(w);
		studentwork.setSubmitdate(new Date());
		if(appendix!=null){
			DateFormat bf = new SimpleDateFormat("yyyy-MM-dd-HH-mm");
			String format = bf.format(studentwork.getSubmitdate());//格式化 bf.format(date);
			String filename=format+student.getSid()+appendixFileName;
			System.out.println(filename);
			File dir=new File(stuWorkPath); 
			//判断文件是否上传，如果上传的话将会创建该目录 
			if(!dir.exists()){ 
				dir.mkdir(); //创建该目录 
			} 
			try {
				File file=new File(dir, filename);			
				if(!file.exists()){
					file.createNewFile();
				}
			    FileUtils.copyFile(appendix,file); 
			}catch (IOException e) {
			   e.printStackTrace();
			} 
			studentwork.setAppendix(appendixFileName);
		}
		workBiz.submitWork(studentwork);
		return SUCCESS;
	}
	public String modifyScore() throws Exception{
		workBiz.modifyScore(score, studentworkid);
		
		return SUCCESS;
	}
	public String searchWorkByTea() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Teacher teacher=(Teacher) session.get("teacher");
		int totalSize=workBiz.getTotalWorkByTea(teacher.getTid());
		Pager pager=new Pager(currentPage,totalSize);
		List workbytea=workBiz.searchWorkByTea(teacher.getTid(), currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("workbytea", workbytea);
		System.out.println("页数"+pager.getTotalPage());
		Work w;
		Iterator li=workbytea.iterator(); 
		while(li.hasNext()){
		    w=(Work)li.next();
		   
		    System.out.println("work class"+w.getCourseclass().getName()+w.getStartdate());
		}
		return SUCCESS;
	}
	
	public String searchWorkByClass() throws Exception{
		List workbyclass=workBiz.searchWorkByClass(classid);
		Map session=ActionContext.getContext().getSession();
		session.put("workbyclass", workbyclass);
		return SUCCESS;
	}
	public String downFile() throws Exception{
		  System.out.println(filename);
		  Work w=workBiz.searchOneWork(workid);
		  String fileDate=new SimpleDateFormat("yyyy-MM-dd-HH-mm").format(w.getStartdate());
		  File dir=new File(savepath); 
		  File file=new File(dir, fileDate+filename);
		  if(!file.exists()){
			System.out.println("file not exist!");
		  } 
		  inputStream=new FileInputStream(file);
		  this.setInputStream(inputStream);
		  return SUCCESS;
		 }
	public String downStuWork() throws Exception{
		  System.out.println(filename);
		  Studentwork sw=workBiz.searchOneStuWork(studentworkid);
		  String fileDate=new SimpleDateFormat("yyyy-MM-dd-HH-mm").format(sw.getSubmitdate());
		  File dir=new File(stuWorkPath); 
		  File file=new File(dir,fileDate+sw.getStudent().getSid() +filename);
		  if(!file.exists()){
			  System.out.println("file not exist!");
		  } 
		  inputStream=new FileInputStream(file);
		  return SUCCESS;
		 }
	public String searchWorkByStu() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Student student=(Student) session.get("student");
		int totalSize=workBiz.getTotalWorkByStu(student.getSid());
		Pager pager=new Pager(currentPage,totalSize);
		List workbystu=workBiz.searchWorkByStu(student.getSid(), currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("workbystu", workbystu);
		return SUCCESS;
	}
	public String showWorkOfNoSubmit() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Student student=(Student) session.get("student");
		int totalSize=workBiz.getTotalOfNoSubmit(student.getSid());
		Pager pager=new Pager(currentPage,totalSize);
		List workofnosubmit=workBiz.searchWorkOfNoSubmit(student.getSid(), currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("workofnosubmit", workofnosubmit);
		return SUCCESS;
	}
	public String showWorkOfSubmit() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Student student=(Student) session.get("student");
		int totalSize=workBiz.getTotalOfSubmit(student.getSid());
		Pager pager=new Pager(currentPage,totalSize);
		List workofsubmit=workBiz.searchWorkOfSubmit(student.getSid(), currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("workofsubmit", workofsubmit);
		return SUCCESS;
	}
	public String workDetail() throws Exception{		
		Work w=workBiz.searchOneWork(workid);
		Map session=ActionContext.getContext().getSession();
		session.put("workDetail", w);
		System.out.println(w.getCourseclass().getName());
		List classNum=classBiz.getClassStu(w.getCourseclass().getClassid());
		session.put("classNum", classNum);
		List studentWorks=workBiz.searchStuWorkByClass(workid);
		session.put("studentWorks", studentWorks);
		Student student=(Student) session.get("student");
		if(student!=null){
			List studentWork=workBiz.judgeOneStuWork(student.getSid(), workid);
			Studentwork oneStuWork = null;
			if(studentWork.size()>0)
				oneStuWork=(Studentwork) studentWork.get(0);
			session.put("oneStuWork", oneStuWork);
		}
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = df.format(w.getDeadline());
        try {
            Date dt1 = df.parse(df.format(new Date()));
            Date dt2 = df.parse(dateString);
            if (dt1.getTime() > dt2.getTime()) 
            	session.put("value_date", true);
             else if (dt1.getTime() < dt2.getTime()) 
            	session.put("value_date", false);
           
        } catch (Exception exception) {
            exception.printStackTrace();
        }
		
		return SUCCESS;
	}
	public String deleteWork() throws Exception{
		Work oldWork=workBiz.searchOneWork(workid);
		if(oldWork.getAppendix()!=null){
			DateFormat bf = new SimpleDateFormat("yyyy-MM-dd-HH-mm");
			String format = bf.format(oldWork.getStartdate());//格式化 bf.format(date);
			String filename=format+oldWork.getAppendix();
			File dir=new File(savepath);
			File oldFile=new File(dir,filename);
			if(oldFile.exists())
				if(oldFile.delete())
					System.out.println("delete file success");
			
		}
		workBiz.deleteWork(workid);
		return SUCCESS;
	}
	public String querywork() throws Exception{
		Map session=ActionContext.getContext().getSession();
		int totalSize=workBiz.getTotalWork();
		Pager pager=new Pager(currentPage,totalSize);
		List works=workBiz.queryWork(currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("works",works);
		return SUCCESS;
	}
	public String querystudentwork() throws Exception{
		Map session=ActionContext.getContext().getSession();
		int totalSize=workBiz.getTotalStudentWork();
		Pager pager=new Pager(currentPage,totalSize);
		List studentWorks=workBiz.queryStudentWork(currentPage, pager.getPageSize());
		session.put("pager", pager);
		session.put("studentWorks",studentWorks);
		return SUCCESS;
	}
	public String deletework() throws Exception{
		Work oldWork=workBiz.searchOneWork(workid);
		if(oldWork.getAppendix()!=null){
			DateFormat bf = new SimpleDateFormat("yyyy-MM-dd-HH-mm");
			String format = bf.format(oldWork.getStartdate());//格式化 bf.format(date);
			String filename=format+oldWork.getAppendix();
			File dir=new File(savepath);
			File oldFile=new File(dir,filename);
			if(oldFile.exists())
				if(oldFile.delete())
					System.out.println("delete file success");
			
		}
		workBiz.deleteWork(workid);
		return "input";
	}
	public String deletestudentwork() throws Exception{
		Studentwork oldStuWork=workBiz.searchOneStuWork(studentworkid);
		Student s=userBiz.getStudent(sid);
		if(oldStuWork.getAppendix()!=null){
			DateFormat bf = new SimpleDateFormat("yyyy-MM-dd-HH-mm");
			String format = bf.format(oldStuWork.getSubmitdate());//格式化 bf.format(date);
			String filename=format+s.getSid()+oldStuWork.getAppendix();
			File dir=new File(stuWorkPath);
			File oldFile=new File(dir,filename);
			if(oldFile.exists())
				if(oldFile.delete())
					System.out.println("delete file success");
			
		}
		workBiz.deleteStudentWork(studentworkid);
		return "inputstudent";
	}
}
