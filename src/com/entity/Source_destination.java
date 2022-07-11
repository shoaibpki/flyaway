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

public class Source_destination {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="srcDestId")
	private int srcDestId;
	
	@Column(name="source")
	private String source;
	
	@Column(name="destination")
	private String destination;
	
	@Column (name="ticketPrice")
	private double ticketPrice;

	@OneToMany
	@JoinColumn(name="srcDestId", nullable=true)
	private List<Flights> flights;

	public List<Flights> getFlights() {
		return flights;
	}

	public void setFlights(List<Flights> flights) {
		this.flights = flights;
	}

	public int getSrcDestId() {
		return srcDestId;
	}

	public void setSrcDestId(int srcDestId) {
		this.srcDestId = srcDestId;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public double getTicketPrice() {
		return ticketPrice;
	}

	public void setTicketPrice(double ticketPrice) {
		this.ticketPrice = ticketPrice;
	}
	
}
