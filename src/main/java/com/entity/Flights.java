package com.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
	
	@Column(name="available")
	private boolean available;
	
}
