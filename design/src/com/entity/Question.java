package com.entity;

import java.util.Date;

/**
 * Question entity. @author MyEclipse Persistence Tools
 */

public class Question implements java.io.Serializable {

	// Fields

	private Integer qid;
	private Courseclass courseclass;
	private Student student;
	private Teacher teacher;
	private String question;
	private String answer;
	private Date question_time;
	private Date answer_time;
	// Constructors

	/** default constructor */
	public Question() {
	}

	/** minimal constructor */
	public Question(Student student, String question) {
		this.student = student;
		this.question = question;
	}

	/** full constructor */
	public Question(Courseclass courseclass, Student student, Teacher teacher, String question, String answer,Date question_time,Date answer_time) {
		this.courseclass = courseclass;
		this.student = student;
		this.teacher = teacher;
		this.question = question;
		this.answer = answer;
		this.question_time=question_time;
		this.answer_time=answer_time;
	}

	// Property accessors

	public Integer getQid() {
		return this.qid;
	}

	public void setQid(Integer qid) {
		this.qid = qid;
	}

	public Courseclass getCourseclass() {
		return this.courseclass;
	}

	public void setCourseclass(Courseclass courseclass) {
		this.courseclass = courseclass;
	}

	public Student getStudent() {
		return this.student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getQuestion_time() {
		return question_time;
	}

	public void setQuestion_time(Date question_time) {
		this.question_time = question_time;
	}

	public Date getAnswer_time() {
		return answer_time;
	}

	public void setAnswer_time(Date answer_time) {
		this.answer_time = answer_time;
	}

}