package com.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Brand entity. @author MyEclipse Persistence Tools
 */

public class Brand implements java.io.Serializable {

	// Fields

	private Integer bid;
	private String brandsname;
	private String logo;
	private Set shoes = new HashSet(0);

	// Constructors

	/** default constructor */
	public Brand() {
	}

	/** full constructor */
	public Brand(String brandsname, String logo, Set shoes) {
		this.brandsname = brandsname;
		this.logo = logo;
		this.shoes = shoes;
	}

	// Property accessors

	public Integer getBid() {
		return this.bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public String getBrandsname() {
		return this.brandsname;
	}

	public void setBrandsname(String brandsname) {
		this.brandsname = brandsname;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public Set getShoes() {
		return this.shoes;
	}

	public void setShoes(Set shoes) {
		this.shoes = shoes;
	}

}