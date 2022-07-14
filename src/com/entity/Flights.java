package com.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table
public class Flights {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="flightId")
	private int flightId;
	
	@Column(name="flightName")
	private String flightName;
	
	@Column(name="flightDate")
	private Date flightDate;
	
	@Column(name="noOfPersons")
	private int noOfPersons;
	
	@Column(name="noOfTicket")
	private int noOfTicket;
	
	@Column(name="srcDestId")
	private int srcDestId;
	
	@Column(name="airLineId")
	private int airLineId;
	
	@OneToMany
	@JoinColumn(name="flightId")
	List<Passenger> passengar;
	
	public List<Passenger> getPassenger() {
		return passengar;
	}

	public void setPassenger(List<Passenger> passenger) {
		this.passengar = passenger;
	}

	public int getSrcDestId() {
		return srcDestId;
	}

	public void setSrcDestId(int srcDestId) {
		this.srcDestId = srcDestId;
	}

	public int getAirLineId() {
		return airLineId;
	}

	public void setAirLineId(int airLineId) {
		this.airLineId = airLineId;
	}

	public int getFlightId() {
		return flightId;
	}

	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}

	public String getFlightName() {
		return flightName;
	}

	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}

	public Date getFlightDate() {
		return flightDate;
	}

	public void setFlightDate(Date flightDate) {
		this.flightDate = flightDate;
	}

	public int getNoOfPersons() {
		return noOfPersons;
	}

	public void setNoOfPersons(int noOfPersons) {
		this.noOfPersons = noOfPersons;
	}

	public int getNoOfTicket() {
		return noOfTicket;
	}

	public void setNoOfTicket(int noOfTicket) {
		this.noOfTicket = noOfTicket;
	}

	
}
