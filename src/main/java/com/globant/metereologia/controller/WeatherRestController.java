package com.globant.metereologia.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.globant.metereologia.entities.Location;
import com.globant.metereologia.entities.Temperature;
import com.globant.metereologia.entities.Weather;
import com.globant.metereologia.repository.WeatherRepository;

@RestController
public class WeatherRestController {
	
	@Autowired
	WeatherRepository weatherRepository;
		

	@RequestMapping("/weather/{date}")
	public List<Weather> get(@PathVariable("date") String date) {	
		LocalDate localDate = LocalDate.parse(date);
		List<Weather> list = weatherRepository.findByDate(localDate);
		if (list.isEmpty()) {
		    throw new IllegalStateException("Table Weather: Record not found for Date : " + localDate);	
		}		
		return sortList(list);
	}

	@GetMapping("/weather")
	public List<Weather> list() {
		List<Weather> list = weatherRepository.findAll();
		return sortList(list);
	}
	
	@PostMapping("/weather")
	public ResponseEntity<?> post(@RequestBody String json) {
		Weather weather = new Weather();
				
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode node = null;
		try {
			node = objectMapper.readTree(json);
		} catch (JsonMappingException e3) {
			e3.printStackTrace();
		} catch (JsonProcessingException e3) {
			e3.printStackTrace();
		}
		
		Long longId = objectMapper.convertValue(node.get("id"),Long.class);		
		Optional<Weather> optional = weatherRepository.findById(longId);
		if (optional.isPresent()) {
		    throw new DuplicateKeyException("Duplicate key on Table Weather id : " + longId);	
		}		
		weather.setId(longId);
		
	    String stringDate = objectMapper.convertValue(node.get("date"),String.class);  
	    LocalDate date = null;
    	date = LocalDate.parse(stringDate);
        weather.setDate(date);
        
		HashMap mapLocation = objectMapper.convertValue(node.get("location"),HashMap.class);
	    Location location = new Location((Double)mapLocation.get("lat"), (Double)mapLocation.get("lon"), (String)mapLocation.get("city"), (String)mapLocation.get("state"));
	    weather.setLocation(location);
	    
		List doubleList = objectMapper.convertValue(node.get("temperature"),ArrayList.class);
	    Set<Temperature> temperatureSet = new HashSet<Temperature>();	    
	    for (int i = 0; i<doubleList.size(); i++) {
	    	Temperature temperature = new Temperature(i, (Double)doubleList.get(i), weather);
	    	temperatureSet.add(temperature);
	    }	    
	    weather.setTemperatureList(temperatureSet);
	    
	    Weather save = weatherRepository.save(weather);	    
		return ResponseEntity.ok(save);
	}
	
	@DeleteMapping("/delete")
	public void  delete() {
		weatherRepository.deleteAll();
	}
	
    private List<Weather> sortList(List<Weather> list) {
    	Collections.sort(list, (o1, o2) -> ((Long)o1.getId()).intValue() - ((Long)o2.getId()).intValue());
		return list;
    }
}
