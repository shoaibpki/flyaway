package com.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
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
	@JoinColumn(name="airLineId", nullable=false)
	private List<Airlines> airline;
	
	@OneToMany
	@JoinColumn(name="flightId", nullable=false)
	private List<Source_destination> srce_dest;

}
