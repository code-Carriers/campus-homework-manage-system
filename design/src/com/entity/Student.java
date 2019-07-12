package com.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */

public class Student implements java.io.Serializable {

	// Fields

	private Integer sid;
	private String number;
	private String email;
	private String password;
	private String name;
	private Integer telephone;
	private String school;
	private String photo;
	private Set studentclasses = new HashSet(0);
	private Set studentworks = new HashSet(0);
	private Set questions = new HashSet(0);

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** minimal constructor */
	public Student(String number, String email, String password, String name, String school) {
		this.number = number;
		this.email = email;
		this.password = password;
		this.name = name;
		this.school = school;
	}

	/** full constructor */
	public Student(String number, String email, String password, String name, Integer telephone, String school,
			String photo, Set studentclasses, Set studentworks, Set questions) {
		this.number = number;
		this.email = email;
		this.password = password;
		this.name = name;
		this.telephone = telephone;
		this.school = school;
		this.photo = photo;
		this.studentclasses = studentclasses;
		this.studentworks = studentworks;
		this.questions = questions;
	}

	// Property accessors

	public Integer getSid() {
		return this.sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
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

	public Set getStudentclasses() {
		return this.studentclasses;
	}

	public void setStudentclasses(Set studentclasses) {
		this.studentclasses = studentclasses;
	}

	public Set getStudentworks() {
		return this.studentworks;
	}

	public void setStudentworks(Set studentworks) {
		this.studentworks = studentworks;
	}

	public Set getQuestions() {
		return this.questions;
	}

	public void setQuestions(Set questions) {
		this.questions = questions;
	}

}