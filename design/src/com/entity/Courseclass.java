package com.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Courseclass entity. @author MyEclipse Persistence Tools
 */

public class Courseclass implements java.io.Serializable {

	// Fields

	private Integer classid;
	private Teacher teacher;
	private String name;
	private Date create_time;
	private Set studentclasses = new HashSet(0);
	private Set questions = new HashSet(0);
	private Set works = new HashSet(0);
	private Set announces = new HashSet(0);
	private Boolean b;
	// Constructors

	/** default constructor */
	public Courseclass() {
	}

	/** minimal constructor */
	public Courseclass(Teacher teacher, String name) {
		this.teacher = teacher;
		this.name = name;
	}

	/** full constructor */
	public Courseclass(Teacher teacher, String name, Date create_time,Set studentclasses, Set questions, Set works, Set announces) {
		this.teacher = teacher;
		this.name = name;
		this.create_time=create_time;
		this.studentclasses = studentclasses;
		this.questions = questions;
		this.works = works;
		this.announces = announces;
	}

	// Property accessors

	public Integer getClassid() {
		return this.classid;
	}

	public void setClassid(Integer classid) {
		this.classid = classid;
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getStudentclasses() {
		return this.studentclasses;
	}

	public void setStudentclasses(Set studentclasses) {
		this.studentclasses = studentclasses;
	}

	public Set getQuestions() {
		return this.questions;
	}

	public void setQuestions(Set questions) {
		this.questions = questions;
	}

	public Set getWorks() {
		return this.works;
	}

	public void setWorks(Set works) {
		this.works = works;
	}

	public Set getAnnounces() {
		return this.announces;
	}

	public void setAnnounces(Set announces) {
		this.announces = announces;
	}

	public Boolean getB() {
		return b;
	}

	public void setB(Boolean b) {
		this.b = b;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

}