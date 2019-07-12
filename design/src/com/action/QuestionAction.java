package com.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.biz.*;
import com.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class QuestionAction  extends ActionSupport {

	QuestionBiz questionBiz;
	ClassBiz classBiz;
	public QuestionBiz getQuestionBiz() {
		return questionBiz;
	}

	public void setQuestionBiz(QuestionBiz questionBiz) {
		this.questionBiz = questionBiz;
	}
	
	public ClassBiz getClassBiz() {
		return classBiz;
	}

	public void setClassBiz(ClassBiz classBiz) {
		this.classBiz = classBiz;
	}

	Question question;
	int classid;
	String answer;
	int sid;
	int qid;
	public Integer currentPage=1;
	
	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}
	
	public int getClassid() {
		return classid;
	}

	public void setClassid(int classid) {
		this.classid = classid;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String addQuestion() throws Exception{
		System.out.println("add question success");
		Map session=ActionContext.getContext().getSession();
		Student student=(Student) session.get("student");
		question.setStudent(student);
		Courseclass c=classBiz.searchoneClass(classid);
		question.setTeacher(c.getTeacher());
		question.setCourseclass(c);
		question.setQuestion_time(new Date());
		questionBiz.addQuestion(question);
		return "input";
	}
	public String answerQuestion() throws Exception{
		System.out.println("add answer success"+answer+qid);
		questionBiz.answerQuestion(answer,qid);
		return "input";
	}
	public String searchQuestionByStu() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Student student=(Student) session.get("student");
		int totalSize=questionBiz.getTotalQuestionByStu(student.getSid());
		Pager pager=new Pager(currentPage,totalSize);
		session.put("pager", pager);
		List questionbystu=questionBiz.searchQuestionByStu(student.getSid(), currentPage, pager.getPageSize());
		session.put("questionbystu", questionbystu);
		return SUCCESS;
	}
	public String searchQuestionByTea() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Teacher teacher=(Teacher) session.get("teacher");
		int totalSize=questionBiz.getTotalQuestionByTea(teacher.getTid());
		Pager pager=new Pager(currentPage,totalSize);
		session.put("pager", pager);
		List questionbytea=questionBiz.searchQuestionByTea(teacher.getTid(), currentPage, pager.getPageSize());
		session.put("questionbytea", questionbytea);
		return SUCCESS;
	}
	public String searchQuestionOfNotAnswer() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Teacher teacher=(Teacher) session.get("teacher");
		int totalSize=questionBiz.getTotalQuestionOfNotAnswer(teacher.getTid());
		Pager pager=new Pager(currentPage,totalSize);
		session.put("pager", pager);
		List questionOfNotAnswer=questionBiz.searchQuestionOfNotAnswer(teacher.getTid(), currentPage, pager.getPageSize());
		session.put("questionOfNotAnswer", questionOfNotAnswer);
		return SUCCESS;
	}
	public String queryquestion() throws Exception{
		Map session=ActionContext.getContext().getSession();
		int totalSize=questionBiz.getTotalQuestion();
		Pager pager=new Pager(currentPage,totalSize);
		session.put("pager", pager);
		List questions=questionBiz.queryQuestion(currentPage, pager.getPageSize());
		session.put("questions", questions);
		return SUCCESS;
	}
	public String deleteQuestion() throws Exception{
		System.out.println("delete question success");
		questionBiz.deleteQuestion(qid);
		return "input";
	}
	public String deleteAnswer() throws Exception{
		System.out.println("delete answer success");
		questionBiz.deleteAnswer(qid);
		return "input";
	}
}
