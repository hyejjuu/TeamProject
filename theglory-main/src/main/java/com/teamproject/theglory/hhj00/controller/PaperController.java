package com.teamproject.theglory.hhj00.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.teamproject.theglory.hhj00.domain.Paper;
import com.teamproject.theglory.hhj00.service.PaperService;
import com.teamproject.theglory.kgh.domain.Member;

@Controller
@SessionAttributes("paper")
public class PaperController {
	
	private PaperService paperService;
	
	@Autowired
	public void setPaperService(PaperService paperService) {
		this.paperService = paperService;
	}

	@RequestMapping(value="/paperResult", method=RequestMethod.POST)
	public String paperResult(HttpServletRequest request, Model model, Paper paper, String today, String today_t, 
			String three, String[] three_c, String three_t, 
			String week, String[] week_c, String week_t, String month, String[] month_c, String month_t,
			String months, String[] months_c, String months_t, String year, String[] year_c, String year_t,
			String every, String[] every_c, String every_t, String drug, String[] drug_c, String drug_t,
			String malaria, String malaria_t, String vcjd, String vcjd_t) {
		
		
		paperService.addPaper(paper);
		
		
		return "redirect:/main";
	}
	
}
