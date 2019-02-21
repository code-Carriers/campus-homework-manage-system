package com.entity;

import java.util.Date;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable {

	// Fields

	private Integer oid;
	private Shoe shoe;
	private User user;
	private Integer number;
	private Double total;
	private Date orderDate;
	private String address;
	private String status;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** minimal constructor */
	public Order(Shoe shoe, User user, Integer number, Double total, Date orderDate) {
		this.shoe = shoe;
		this.user = user;
		this.number = number;
		this.total = total;
		this.orderDate = orderDate;
	}

	/** full constructor */
	public Order(Shoe shoe, User user, Integer number, Double total, Date orderDate, String address,
			String status) {
		this.shoe = shoe;
		this.user = user;
		this.number = number;
		this.total = total;
		this.orderDate = orderDate;
		this.address = address;
		this.status = status;
	}

	// Property accessors

	public Integer getOid() {
		return this.oid;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
	}

	public Shoe getShoe() {
		return this.shoe;
	}

	public void setShoe(Shoe shoe) {
		this.shoe = shoe;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Double getTotal() {
		return this.total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Date getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}