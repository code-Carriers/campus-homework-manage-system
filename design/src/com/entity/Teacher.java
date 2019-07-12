package com.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */

public class Teacher implements java.io.Serializable {

	// Fields

	private Integer tid;
	private String number;
	private String email;
	private String password;
	private String name;
	private Integer telephone;
	private String school;
	private String photo;
	private Set courseclasses = new HashSet(0);
	private Set questions = new HashSet(0);
	private Set works = new HashSet(0);

	// Constructors

	/** default constructor */
	public Teacher() {
	}

	/** minimal constructor */
	public Teacher(String number, String email, String password, String name, String school) {
		this.number = number;
		this.email = email;
		this.password = password;
		this.name = name;
		this.school = school;
	}

	/** full constructor */
	public Teacher(String number, String email, String password, String name, Integer telephone, String school,
			String photo, Set courseclasses, Set questions, Set works) {
		this.number = number;
		this.email = email;
		this.password = password;
		this.name = name;
		this.telephone = telephone;
		this.school = school;
		this.photo = photo;
		this.courseclasses = courseclasses;
		this.questions = questions;
		this.works = works;
	}

	// Property accessors

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public String getNumber() {
		return this.number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getTelephone() {
		return this.telephone;
	}

	public void setTelephone(Integer telephone) {
		this.telephone = telephone;
	}

	public String getSchool() {
		return this.school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Set getCourseclasses() {
		return this.courseclasses;
	}

	public void setCourseclasses(Set courseclasses) {
		this.courseclasses = courseclasses;
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

}