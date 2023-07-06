package com.teamproject.theglory.kgh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.teamproject.theglory.kgh.service.VisualizationCustomerService;

@Service
public class VisualizationCustomerController {
      
	private VisualizationCustomerService serviceVC;
	
	@Autowired
	public VisualizationCustomerController(VisualizationCustomerService serviceVC) {
		this.serviceVC = serviceVC;
	}
	
	@RequestMapping(value = "balanceMnF" , method = RequestMethod.GET)
	public String MnFChart(Model model) throws Exception {
	    
		List<Integer> mfData = serviceVC.balancMnF();
		
	    ObjectMapper mapper = new ObjectMapper();
		String strMnF = mapper.writeValueAsString(mfData);
		
		System.out.println(strMnF);
		
		model.addAttribute("strMnF" , strMnF);
		
		return "forward:/WEB-INF/views/balanceMnF.jsp";
	}
	
}
