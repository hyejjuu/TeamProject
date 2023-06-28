package com.teamproject.theglory.kgh.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.teamproject.theglory.kgh.domain.LocationMap;
import com.teamproject.theglory.kgh.service.LocationMapService;


@Controller
public class LocationController {
    
	private LocationMapService serviceLM;	
	
		 
	@Autowired
	public LocationController(LocationMapService serviceLM) {
		this.serviceLM = serviceLM;	
	}
	
	@RequestMapping(value="searchMap" , method=RequestMethod.GET)
	public String locationMap(Model model) {
		
		List<LocationMap> location = serviceLM.Map();
		
		model.addAttribute("location", location);
		
		System.out.print(location);
		
		return "searchMap";
	}
	
	
	@RequestMapping(value="searchAction" , method=RequestMethod.POST) 
	public String locationMap2(Model model , String locationAddress) {
		
		List<LocationMap> location = serviceLM.Map2(locationAddress);
		
		model.addAttribute("location", location);
		
		System.out.print("search : " + location);
		
		return "searchMap";
	}

}
