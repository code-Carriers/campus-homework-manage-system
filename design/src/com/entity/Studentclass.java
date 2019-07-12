package com.entity;

/**
 * Studentclass entity. @author MyEclipse Persistence Tools
 */

public class Studentclass implements java.io.Serializable {

	// Fields

	private Integer studentclassid;
	private Courseclass courseclass;
	private Student student;

	// Constructors

	/** default constructor */
	public Studentclass() {
	}

	/** full constructor */
	public Studentclass(Courseclass courseclass, Student student) {
		this.courseclass = courseclass;
		this.student = student;
	}

	// Property accessors

	public Integer getStudentclassid() {
		return this.studentclassid;
	}

	public void setStudentclassid(Integer studentclassid) {
		this.studentclassid = studentclassid;
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

}