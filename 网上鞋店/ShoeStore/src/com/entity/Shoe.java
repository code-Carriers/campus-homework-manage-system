package com.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Shoe entity. @author MyEclipse Persistence Tools
 */

public class Shoe implements java.io.Serializable {

	// Fields

	private Integer sid;
	private Brand brand;
	private String shoename;
	private Double price;
	private String catalog;
	private String picture;
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Shoe() {
	}

	/** minimal constructor */
	public Shoe(String shoename, Double price) {
		this.shoename = shoename;
		this.price = price;
	}

	/** full constructor */
	public Shoe(Brand brand, String shoename, Double price, String catalog, String picture, Set orders) {
		this.brand = brand;
		this.shoename = shoename;
		this.price = price;
		this.catalog = catalog;
		this.picture = picture;
		this.orders = orders;
	}

	// Property accessors

	public Integer getSid() {
		return this.sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public Brand getBrand() {
		return this.brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public String getShoename() {
		return this.shoename;
	}

	public void setShoename(String shoename) {
		this.shoename = shoename;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getCatalog() {
		return this.catalog;
	}

	public void setCatalog(String catalog) {
		this.catalog = catalog;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}