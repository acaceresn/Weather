package com.globant.metereologia.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
public class Temperature {

    @Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long temperature_id;
	private int hour;
	private double temperature;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="id", nullable = false)
	@JsonBackReference
	private Weather weather;
	
	public Temperature(int hour, double temperature, Weather weather) {
		this.hour = hour;
		this.temperature = temperature;
		this.weather = weather;
	}
	
	public Temperature() {}

	public long getTemperature_id() {
		return temperature_id;
	}

	public void setTemperature_id(long temperature_id) {
		this.temperature_id = temperature_id;
	}

	public int getHour() {
		return hour;
	}
	public void setHour(int hour) {
		this.hour = hour;
	}
	public double getTemperature() {
		return temperature;
	}
	public void setTemperature(double temperature) {
		this.temperature = temperature;
	}
	
	public Weather getWeather() {
		return weather;
	}
	public void setWeather(Weather weather) {
		this.weather = weather;
	}
	
}
