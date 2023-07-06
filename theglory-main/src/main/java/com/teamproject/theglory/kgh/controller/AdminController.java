package com.teamproject.theglory.kgh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.teamproject.theglory.kgh.service.DataService;

@Controller
public class AdminController {
   
   private DataService serviceA;

	
   @Autowired
	public AdminController(DataService serviceA) {
		this.serviceA = serviceA;

	}
	
	
	@RequestMapping(value = "admin" , method = RequestMethod.GET)
	public String adminDashboard(Model model) throws Exception {	
		
		List<Integer> ageData = serviceA.groupAge();
		
	    ObjectMapper mapper = new ObjectMapper();
	    String strAge = mapper.writeValueAsString(ageData);
		
		model.addAttribute("strAge",  strAge);
					
		return "forward:/WEB-INF/views/kgh/admin.jsp";
	}
	
	
}
