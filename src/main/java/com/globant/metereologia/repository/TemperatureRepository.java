package com.globant.metereologia.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.globant.metereologia.entities.Temperature;

public interface TemperatureRepository extends JpaRepository<Temperature, Long> {

}
