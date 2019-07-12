package com.entity;

import java.util.Date;

/**
 * Announce entity. @author MyEclipse Persistence Tools
 */

public class Announce implements java.io.Serializable {

	// Fields

	private Integer aid;
	private Courseclass courseclass;
	private String content;
	private Date time;
	
	// Constructors

	/** default constructor */
	public Announce() {
	}

	/** full constructor */
	public Announce(Courseclass courseclass, String content, Date time) {
		this.courseclass = courseclass;
		this.content = content;
		this.time = time;
	}

	// Property accessors

	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public Courseclass getCourseclass() {
		return this.courseclass;
	}

	public void setCourseclass(Courseclass courseclass) {
		this.courseclass = courseclass;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

}