package com.teamproject.theglory.kgh.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.teamproject.theglory.kgh.service.DataService;
import com.teamproject.theglory.kgh.service.VisualizationCustomerService;



@Controller
public class DataChartController {
    
	private  DataService serviceA;
    private VisualizationCustomerService serviceVC;
    
	
	@Autowired
	public DataChartController(DataService serviceA , VisualizationCustomerService serviceVC) {
		this.serviceA = serviceA;
		this.serviceVC = serviceVC;
	}
	
	@RequestMapping(value = "age" , method = RequestMethod.GET)
	public String ageChart(Model model) throws Exception {	
		
		List<Integer> ageData = serviceA.groupAge();
		
	    ObjectMapper mapper = new ObjectMapper();
	    String strAge = mapper.writeValueAsString(ageData);
		
	    System.out.println(strAge);
	    
		model.addAttribute("strAge",  strAge);
			
		return "forward:/WEB-INF/views/kgh/age.jsp";
	}
	
	
	@RequestMapping(value = "area" , method = RequestMethod.GET)
	public String areaChart(Model model) throws Exception {	
		
		List<Integer> areaData = serviceA.areadata();
		
	    ObjectMapper mapper = new ObjectMapper();
	    String strArea = mapper.writeValueAsString(areaData);
		
	    System.out.println(strArea);
	    
		model.addAttribute("strArea",  strArea);
			
		return "forward:/WEB-INF/views/kgh/area.jsp";
	}
	
	@RequestMapping(value = "balanceMnF" , method = RequestMethod.GET)
	public String MnFChart(Model model) throws Exception {
	    
		List<Integer> mfData = serviceVC.balancMnF();
		
	    ObjectMapper mapper = new ObjectMapper();
		String strMnF = mapper.writeValueAsString(mfData);
		
		System.out.println(strMnF);
		
		model.addAttribute("strMnF" , strMnF);
		
		return "forward:/WEB-INF/views/kgh/balanceMnF.jsp";
	}
	
}
