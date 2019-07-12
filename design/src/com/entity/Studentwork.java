package com.entity;

import java.util.Date;

/**
 * Studentwork entity. @author MyEclipse Persistence Tools
 */

public class Studentwork implements java.io.Serializable {

	// Fields

	private Integer studentworkid;
	private Work work;
	private Student student;
	private Date submitdate;
	private String context;
	private String appendix;
	private Float score;

	// Constructors

	/** default constructor */
	public Studentwork() {
	}

	/** minimal constructor */
	public Studentwork(Work work, Student student, Date submitdate) {
		this.work = work;
		this.student = student;
		this.submitdate = submitdate;
	}

	/** full constructor */
	public Studentwork(Work work, Student student, Date submitdate, String context, String appendix, Float score) {
		this.work = work;
		this.student = student;
		this.submitdate = submitdate;
		this.context = context;
		this.appendix = appendix;
		this.score = score;
	}

	// Property accessors

	public Integer getStudentworkid() {
		return this.studentworkid;
	}

	public void setStudentworkid(Integer studentworkid) {
		this.studentworkid = studentworkid;
	}

	public Work getWork() {
		return this.work;
	}

	public void setWork(Work work) {
		this.work = work;
	}

	public Student getStudent() {
		return this.student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Date getSubmitdate() {
		return this.submitdate;
	}

	public void setSubmitdate(Date submitdate) {
		this.submitdate = submitdate;
	}

	public String getContext() {
		return this.context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getAppendix() {
		return this.appendix;
	}

	public void setAppendix(String appendix) {
		this.appendix = appendix;
	}

	public Float getScore() {
		return this.score;
	}

	public void setScore(Float score) {
		this.score = score;
	}

}