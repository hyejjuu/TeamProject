package com.teamproject.theglory.kgh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.teamproject.theglory.kgh.domain.Member;
import com.teamproject.theglory.kgh.domain.ReservationMG;
import com.teamproject.theglory.kgh.service.DataService;
import com.teamproject.theglory.kgh.service.MemberService;
import com.teamproject.theglory.kgh.service.ReservationMGService;
import com.teamproject.theglory.kgh.service.VisualizationCustomerService;




@Controller
public class AdminController {
   
	   private  DataService serviceA;
	   private MemberService serviceM;	
	   private VisualizationCustomerService serviceVC;
	   private ReservationMGService serviceRV;
		
	   @Autowired
		public AdminController(DataService serviceA , MemberService serviceM , VisualizationCustomerService serviceVC,
				ReservationMGService serviceRV) {
			this.serviceA = serviceA;
			this.serviceM = serviceM;
			this.serviceVC = serviceVC;
			this.serviceRV = serviceRV;
		}
	
	
   @RequestMapping(value = "admin" , method = RequestMethod.GET)
	public String adminDashboard(Model model) throws Exception {	
		
		List<Integer> ageData = serviceA.groupAge();
		
	    ObjectMapper mapper = new ObjectMapper();
	    String strAge = mapper.writeValueAsString(ageData);
		
		model.addAttribute("strAge",  strAge);
		
	    List<Integer> mfData = serviceVC.balancMnF();
		
	    ObjectMapper mapper2 = new ObjectMapper();
		String strMnF = mapper2.writeValueAsString(mfData);
		
		System.out.println(strMnF);
		
		model.addAttribute("strMnF" , strMnF);
		
		List<Integer> areaData = serviceA.areadata();
		
	    ObjectMapper mapper3 = new ObjectMapper();
	    String strArea = mapper3.writeValueAsString(areaData);		
	    
		model.addAttribute("strArea",  strArea);
			
		return "forward:/WEB-INF/views/kgh/admin.jsp";
	}
	
	
	@RequestMapping(value = "customer" , method = RequestMethod.GET)
	public String listMember(Model model) {
		
		List<Member> member = serviceM.listMember();
		
		System.out.println(member);
		
		model.addAttribute("member", member);
		
		return "forward:/WEB-INF/views/kgh/customer.jsp";		
	}
	
	@RequestMapping(value = "reservationMG" , method = RequestMethod.GET)
	public String rsvMG(Model model) {
		
		List<ReservationMG> rsv = serviceRV.schedule();		
		
		model.addAttribute("rsv", rsv);
		
		return "forward:/WEB-INF/views/kgh/reservationMG.jsp";		
	}
	
	
}
