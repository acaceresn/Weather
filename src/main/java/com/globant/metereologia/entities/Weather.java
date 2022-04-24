package com.globant.metereologia.entities;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name = "weather")
public class Weather {

    @Id
	private long id;
	private LocalDate date;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="locationId", referencedColumnName = "location_id")
	private Location location;
	
	@JsonManagedReference
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="weather")
	private Set<Temperature> temperatures = new HashSet<>();

	public Weather(long id, LocalDate date, Location location, Set<Temperature> temperatures) {
		this.id = id;
		this.date = date;
		this.location = location;
		this.temperatures = temperatures;
	}
	
	public Weather() {};
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public Location getLocation() {
		return location;
	}
	public void setLocation(Location location) {
		this.location = location;
	}
	
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	
	public Set<Temperature> getTemperatures() {
		return temperatures;
	}
	public void setTemperatureList(Set<Temperature> temperatures) {
		this.temperatures = temperatures;
	}
	
	
}
