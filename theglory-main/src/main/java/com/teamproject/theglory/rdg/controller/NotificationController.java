package com.teamproject.theglory.rdg.controller;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.teamproject.theglory.rdg.domain.Notification;
import com.teamproject.theglory.rdg.service.NotificationService;

@Controller
public class NotificationController {
	
	@Autowired
	private NotificationService notificationService;
	
	public void setNotificationService(NotificationService notificationService) {
		this.notificationService = notificationService;
	}
	
	@RequestMapping(value="/notificationWriteForm")
	public String notificationWriteForm(Notification notification) {
		return "rdg/notificationWriteForm";
	}
	
		
	@RequestMapping(value= {"/notificationList"})
	public String notificationList(Model model, 
	@RequestParam(value="pageNum", required=false, 
	defaultValue="1") int pageNum,
	@RequestParam(value="type", required=false, 
	defaultValue="null") String type,
	@RequestParam(value="keyword", required=false,
	defaultValue="null") String keyword) {		
		
		Map<String, Object> modelMap = notificationService.notificationList(pageNum, type, keyword);
		
		model.addAllAttributes(modelMap);
			
		return "rdg/notificationList";
	}
	
	@RequestMapping("/notificationDetail")
	public String notificationDetail(Model model, int no, 
	@RequestParam(value="pageNum", required=false, 
	defaultValue="1") int pageNum,
	@RequestParam(value="type", required=false, 
	defaultValue="null") String type,
	@RequestParam(value="keyword", required=false,
	defaultValue="null") String keyword) throws Exception {
		
		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true;
		
		Notification notification = notificationService.getNotification(no, true);
		
		model.addAttribute("notification", notification);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("searchOption", searchOption);
		
		if(searchOption) {
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);
		}
		
		return "rdg/notificationDetail";
	}
	
	@RequestMapping(value="/notificationWriteProcess", method=RequestMethod.POST)
	public String insertNotification(Notification notification) {
		
		notificationService.insertNotification(notification);	
			
		return "redirect:notificationList";
	}
		
	@RequestMapping(value="/notificationUpdate")
	public String updateNotification(Model model, HttpServletResponse response, 
	PrintWriter out, int no, String pass,
	@RequestParam(value="pageNum", required=false, 
	defaultValue="1") int pageNum,
	@RequestParam(value="type", required=false, 
	defaultValue="null") String type,
	@RequestParam(value="keyword", required=false,
	defaultValue="null") String keyword) throws Exception {
		
		boolean result = notificationService.isPassCheck(no, pass);
		
		if(! result) {

			response.setContentType("text/html; charset=utf-8");				
			out.println("<script>");
			out.println("	alert('비밀번호가 맞지 않습니다.');");
			out.println("	history.back();");
			out.println("</script>");

			return null;
		}
		
		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true; 
		
		Notification notification = notificationService.getNotification(no, false);
		
		model.addAttribute("notification", notification);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("searchOption", searchOption);

		if(searchOption) {
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);
		}
		
		return "rdg/notificationUpdateForm";
	}
	
	

	@RequestMapping(value="notificationUpdate", method=RequestMethod.POST)
	public String updateNotification(HttpServletResponse response, 
	PrintWriter out, Notification notification,
	RedirectAttributes reAttrs, 
	@RequestParam(value="pageNum", required=false, 
	defaultValue="1") int pageNum,
	@RequestParam(value="type", required=false, 
	defaultValue="null") String type,
	@RequestParam(value="keyword", required=false,
	defaultValue="null") String keyword) throws Exception {
	
		boolean result = notificationService.isPassCheck(notification.getNo(), notification.getPass());
		
		if(! result) {

			response.setContentType("text/html; charset=utf-8");				
			out.println("<script>");
			out.println("	alert('비밀번호가 맞지 않습니다.');");
			out.println("	history.back();");
			out.println("</script>");

			return null;
		}
		
		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true; 
		
		notificationService.updateNotification(notification);
		
		reAttrs.addAttribute("searchOption", searchOption);
		
		if(searchOption) {
			
			reAttrs.addAttribute("type", type);
			reAttrs.addAttribute("keyword", keyword);
			
		}
		
		reAttrs.addAttribute("pageNum", pageNum);
		
		return "redirect:notificationList";
	}
	
	@RequestMapping({"/notificationDelete"})
	public String deleteNotification(HttpServletResponse response, 
	PrintWriter out, int no, String pass,
	RedirectAttributes reAttrs, 
	@RequestParam(value="pageNum", required=false, 
	defaultValue="1") int pageNum,
	@RequestParam(value="type", required=false, 
	defaultValue="null") String type,
	@RequestParam(value="keyword", required=false,
	defaultValue="null") String keyword) throws Exception {
		
		boolean result = notificationService.isPassCheck(no, pass);
		
		if(! result) {

			response.setContentType("text/html; charset=utf-8");				
			out.println("<script>");
			out.println("	alert('비밀번호가 맞지 않습니다.');");
			out.println("	history.back();");
			out.println("</script>");

			return null;
		}
		
		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true; 
		
		notificationService.deleteNotification(no);
		
		reAttrs.addAttribute("searchOption", searchOption);
		
		if(searchOption) {
			
			reAttrs.addAttribute("type", type);
			reAttrs.addAttribute("keyword", keyword);
			
		}
			
		reAttrs.addAttribute("pageNum", pageNum);
		
		return "redirect:notificationList";
	}
	
}
