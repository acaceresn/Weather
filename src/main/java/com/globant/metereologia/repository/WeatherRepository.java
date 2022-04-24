package com.globant.metereologia.repository;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.globant.metereologia.entities.Weather;

public interface WeatherRepository  extends JpaRepository<Weather, Long>   {

	
	List<Weather> findByDate(LocalDate date);

	List<Weather> findById(long Id);

}
