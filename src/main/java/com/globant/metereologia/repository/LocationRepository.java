package com.globant.metereologia.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.globant.metereologia.entities.Location;

public interface LocationRepository extends JpaRepository<Location, Long> {

}
