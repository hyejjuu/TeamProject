package com.teamproject.theglory.kgh.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.teamproject.theglory.kgh.domain.Member;
import com.teamproject.theglory.kgh.domain.ReservationMG;
import com.teamproject.theglory.kgh.service.DataService;
import com.teamproject.theglory.kgh.service.MemberService;
import com.teamproject.theglory.kgh.service.ReservationMGService;
import com.teamproject.theglory.kgh.service.VisualizationCustomerService;
import com.teamproject.theglory.rdg.domain.Notification;
import com.teamproject.theglory.rdg.service.NotificationService;
import com.teamproject.theglory.hhj95.service.MatchingBoardService;




@Controller
public class AdminController {
   
	   private  DataService serviceA;
	   private MemberService serviceM;	
	   private VisualizationCustomerService serviceVC;
	   private ReservationMGService serviceRV;
	   private NotificationService notificationService;
	   private MatchingBoardService boardService;
		
	   @Autowired
		public AdminController(DataService serviceA , MemberService serviceM , VisualizationCustomerService serviceVC,
				ReservationMGService serviceRV, NotificationService notificationService , MatchingBoardService boardService) {
			this.serviceA = serviceA;
			this.serviceM = serviceM;
			this.serviceVC = serviceVC;
			this.serviceRV = serviceRV;
			this.notificationService = notificationService;
			this.boardService = boardService;
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
	
	@RequestMapping(value = "stateUpdate" , method = RequestMethod.GET)
	public String rsvStateUpdate(Model model , int rNo) {
		
        serviceRV.rsvStateUpdate(rNo);;		
	
		return "forward:/WEB-INF/views/kgh/admin.jsp";		
	}	
	
	@RequestMapping(value= {"MGnotificationList"})
	public String notificationList(Model model, 
	@RequestParam(value="pageNum", required=false, 
	defaultValue="1") int pageNum,
	@RequestParam(value="type", required=false, 
	defaultValue="null") String type,
	@RequestParam(value="keyword", required=false,
	defaultValue="null") String keyword) {		
		
		Map<String, Object> modelMap = notificationService.notificationList(pageNum, type, keyword);
	    
		model.addAllAttributes(modelMap);
				
		return "forward:/WEB-INF/views/kgh/notificationList.jsp";
	}
	
	@RequestMapping("MGmatchingBoardList")
	public String matchingBoardList(Model model, 
	@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
	@RequestParam(value = "type", required = false, defaultValue = "null") String type,
	@RequestParam(value = "keyword", required = false, defaultValue = "null") String keyword,
	@RequestParam(value = "local", required = false, defaultValue = "noLocal") String[] local,
	@RequestParam(value = "bloodtype", required = false, defaultValue = "noBloodtype") String[] bloodtype,
	@RequestParam(value = "blood_donation", required = false, defaultValue = "noBloodDonation") String[] blood_donation) {
		
		boolean isFilter = !local[0].equals("noLocal") || !bloodtype[0].equals("noBloodtype") || !blood_donation[0].equals("noBloodDonation");

		Map<String, Object> modelMap = boardService.matchingBoardList(pageNum, type, keyword, local, bloodtype, blood_donation);
		
		model.addAllAttributes(modelMap);
		
		if(isFilter) {
			model.addAttribute("local", local);
			model.addAttribute("bloodtype", bloodtype);
			model.addAttribute("blood_donation", blood_donation);
		}
		
		return "forward:/WEB-INF/views/kgh/matchingBoardList.jsp";
	
}
	
	
	
	
}
