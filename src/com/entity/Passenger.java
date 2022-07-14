package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

@Table
public class Passenger {
	@Id
	@GeneratedValue
	@Column(name="pid")
	private int pid;
	
	@Column(name="flightId")
	private int flightId;
	
	@Column(name="pname")
	private String pname;
	
	@Column(name="mobile")
	private int mobile;
	
	@Column(name="noOfPassengar")
	private int noOfPassengar;
	
	@Column (name="purpose")
	private String purpose;
	
	@Column(name="totalAmout")
	private double totalAmount;
	
	@Column(name="email")
	private String email;
	
	public double getTotalAmount() {
		return totalAmount;
	}
	
	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public int getFlightId() {
		return flightId;
	}

	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getMobile() {
		return mobile;
	}

	public void setMobile(int mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getNoOfPassengar() {
		return noOfPassengar;
	}

	public void setNoOfPassengar(int noOfPassengar) {
		this.noOfPassengar = noOfPassengar;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	
}
