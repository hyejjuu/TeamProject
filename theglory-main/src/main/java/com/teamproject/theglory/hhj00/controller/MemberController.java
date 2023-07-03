package com.teamproject.theglory.hhj00.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.teamproject.theglory.hhj00.service.MemberService;
import com.teamproject.theglory.kgh.domain.Member;


@Controller("mController")
@SessionAttributes("member")
/* @RequestMapping("/member") */
public class MemberController {
	
	private MemberService memberService;
	
	@Autowired
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping("/joinResult")
	public String joinResult(Model model, Member member,
			String pass1, String emailId, String emailDomain,
			String phone,
			@RequestParam(value="emailGet", required=false, defaultValue="false")boolean emailGet) {		
		
		member.setPass(pass1);
		member.setEmail(emailId + "@" + emailDomain);
				
		if(phone.equals("")) {			
			member.setPhone("");				
		} else {			
			member.setPhone(phone);
		}				
		member.setEmailGet(Boolean.valueOf(emailGet));	
		memberService.addMember(member);
		System.out.println("joinResult : " + member.getName());
		
		return "redirect:/main";
	}
	
	@RequestMapping("/overlapIdCheck")	
	public String overlapIdCheck(Model model, String id) {		
		
		boolean overlap = memberService.overlapIdCheck(id);
		
		model.addAttribute("id", id);
		model.addAttribute("overlap", overlap);
		
		return "forward:WEB-INF/views/member/overlapIdCheck.jsp";
	}
	
	
}
