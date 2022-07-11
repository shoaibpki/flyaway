package com.entity;

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
public class Airlines {
	@Id
	@GeneratedValue
	@Column(name="airLineId")
	private int airLineId;
	
	@Column(name="airLineName")
	private String airLineName;
	
	@OneToMany
	@JoinColumn(name="airLineId", nullable=true)
	private List<Flights> Flights;
	

	public int getAirLineId() {
		return airLineId;
	}

	public void setAirLineId(int airLineId) {
		this.airLineId = airLineId;
	}

	public String getAirLineName() {
		return airLineName;
	}

	public void setAirLineName(String airLineName) {
		this.airLineName = airLineName;
	}

	public List<Flights> getFlights() {
		return Flights;
	}

	public void setFlights(List<Flights> flights) {
		Flights = flights;
	}
}
