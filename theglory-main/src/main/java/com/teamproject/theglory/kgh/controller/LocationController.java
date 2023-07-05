package com.teamproject.theglory.kgh.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping(value="searchMap")
	public String locationMap(Model model , 	@RequestParam(value="pageNum", required=false, 
			defaultValue="1") int pageNum  , String type) {
		
		Map<String, Object> modelMap = serviceLM.Map(pageNum , type);

		model.addAllAttributes(modelMap);
		
		return "kgh/searchMap";
	}
	
	
	@RequestMapping(value="SearchAddress" , method=RequestMethod.GET) 
	public String addressAction(Model model , String type,
			@RequestParam(value="pageNum", required=false, 
			defaultValue="1") int pageNum, String locationAddress) {
		
		Map<String, Object> modelMap = serviceLM.addressSearch(pageNum,type,locationAddress);
		    
		model.addAllAttributes(modelMap);
		
		return "kgh/searchMap";
	}
	
	
	@RequestMapping(value="SearchArea" , method=RequestMethod.GET) 
	public String areaAction(Model model  ,String type,
			@RequestParam(value="pageNum", required=false, 
			defaultValue="1") int pageNum , @RequestParam(value="areaNo", required=false, 
			defaultValue="1") Integer areaNo) {
			
		Map<String, Object> modelMap = serviceLM.areaSearch(pageNum,type ,areaNo);
		
		model.addAllAttributes(modelMap);
		
		return "kgh/searchMap";
	}

}
