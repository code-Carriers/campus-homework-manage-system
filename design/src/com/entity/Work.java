package com.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Work entity. @author MyEclipse Persistence Tools
 */

public class Work implements java.io.Serializable {

	// Fields

	private Integer workid;
	private Courseclass courseclass;
	private Teacher teacher;
	private String title;
	private String context;
	private String appendix;
	private Date startdate;
	private Date deadline;
	private Set studentworks = new HashSet(0);

	// Constructors

	/** default constructor */
	public Work() {
	}

	/** minimal constructor */
	public Work(String title, String context, Date startdate, Date deadline) {
		this.title = title;
		this.context = context;
		this.startdate = startdate;
		this.deadline = deadline;
	}

	/** full constructor */
	public Work(Courseclass courseclass, Teacher teacher, String title, String context, String appendix,
			Date startdate, Date deadline, Set studentworks) {
		this.courseclass = courseclass;
		this.teacher = teacher;
		this.title = title;
		this.context = context;
		this.appendix = appendix;
		this.startdate = startdate;
		this.deadline = deadline;
		this.studentworks = studentworks;
	}

	// Property accessors

	public Integer getWorkid() {
		return this.workid;
	}

	public void setWorkid(Integer workid) {
		this.workid = workid;
	}

	public Courseclass getCourseclass() {
		return this.courseclass;
	}

	public void setCourseclass(Courseclass courseclass) {
		this.courseclass = courseclass;
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public Date getStartdate() {
		return this.startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getDeadline() {
		return this.deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public Set getStudentworks() {
		return this.studentworks;
	}

	public void setStudentworks(Set studentworks) {
		this.studentworks = studentworks;
	}

}