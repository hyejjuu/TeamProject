package com.teamproject.theglory.hhj95.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.teamproject.theglory.hhj95.domain.MatchingBoard;
import com.teamproject.theglory.hhj95.domain.MatchingReply;
import com.teamproject.theglory.hhj95.service.MatchingBoardService;

@Controller
public class MatchingBoardController {

	@Autowired
	private MatchingBoardService boardService;

	public void setBoardService(MatchingBoardService boardService) {
		this.boardService = boardService;
	}
	
	@RequestMapping("/matchingBoardList")
	public String matchingBoardList(Model model, 
														@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
														@RequestParam(value = "type", required = false, defaultValue = "null") String type,
														@RequestParam(value = "keyword", required = false, defaultValue = "null") String keyword,
														@RequestParam(value = "local", required = false, defaultValue = "noLocal") String[] local,
														@RequestParam(value = "bloodtype", required = false, defaultValue = "noBloodtype") String[] bloodtype,
														@RequestParam(value = "blood_donation", required = false, defaultValue = "noBloodDonation") String[] blood_donation) {
		
		Map<String, Object> modelMap = boardService.matchingBoardList(pageNum, type, keyword, local, bloodtype, blood_donation);
		
		model.addAllAttributes(modelMap);
		
		return "hhj95/matchingBoardList";
	}
	
	@RequestMapping("/matchingBoardDetail")
	public String MatchingBoardDetail(Model model, int no,
															@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
															@RequestParam(value = "type", required = false, defaultValue = "null") String type,
															@RequestParam(value = "keyword", required = false, defaultValue = "null") String keyword,
															@RequestParam(value = "local", required = false, defaultValue = "noLocal") String[] local,
															@RequestParam(value = "bloodtype", required = false, defaultValue = "noBloodtype") String[] bloodtype,
															@RequestParam(value = "blood_donation", required = false, defaultValue = "noBloodDonation") String[] blood_donation) throws Exception {
		
		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true;
		
		boolean filterOption = (!local[0].equals("noLocal")) || (!bloodtype[0].equals("noBloodtype")) || (!blood_donation[0].equals("noBloodDonation"));
		
		MatchingBoard board = boardService.getMatchingBoard(no, true);
		
		List<MatchingReply> replyList = boardService.replyList(no);
		
		model.addAttribute("board", board);
		model.addAttribute("replyList", replyList);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("searchOption", searchOption);
		model.addAttribute("filterOption", filterOption);
		
		if(searchOption) {
			model.addAttribute("type", type);
			model.addAttribute("keyword", keyword);
		}
		
		if(filterOption) {
			model.addAttribute("local", local);
			model.addAttribute("bloodtype", bloodtype);
			model.addAttribute("blood_donation", blood_donation);
		}
		
		return "hhj95/matchingBoardDetail";
	}
	
	@RequestMapping(value="/matchingWriteProcess", method=RequestMethod.POST)
	public String insertBoard(MatchingBoard board) {
		
		boardService.insertBoard(board);
		
		return "redirect:matchingBoardList";
	}
	
	@RequestMapping(value="/update")
	public String updateBoard(Model model, HttpServletResponse response, PrintWriter out, int no, String pass,
												@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
												@RequestParam(value = "type", required = false, defaultValue = "null") String type,
												@RequestParam(value = "keyword", required = false, defaultValue = "null") String keyword,
												@RequestParam(value = "local", required = false, defaultValue = "noLocal") String[] local,
												@RequestParam(value = "bloodtype", required = false, defaultValue = "noBloodtype") String[] bloodtype,
												@RequestParam(value = "blood_donation", required = false, defaultValue = "noBloodDonation") String[] blood_donation) throws Exception {
		
		boolean result = boardService.isPassCheck(no, pass);
		
		boolean filterOption = (!local[0].equals("noLocal")) || (!bloodtype[0].equals("noBloodtype")) || (!blood_donation[0].equals("noBloodDonation"));
		
		if(! result) {
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("alert('비밀번호가 맞지 않습니다.')");
			out.println("history.back();");
			out.println("</script>");
			
			return null;
		}
		
		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true;
		
		MatchingBoard board = boardService.getMatchingBoard(no, false);
		
		model.addAttribute("board", board);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("searchOption", searchOption);
		model.addAttribute("filterOption", filterOption);
		
		if(searchOption) {
			model.addAttribute("type", type);
			model.addAttribute("keyword", keyword);
		}
		
		if(filterOption) {
			model.addAttribute("local", local);
			model.addAttribute("bloodtype", bloodtype);
			model.addAttribute("blood_donation", blood_donation);
		}
		
		return "hhj95/matchingUpdateForm";
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String updateBoard(HttpServletResponse response, PrintWriter out, MatchingBoard board, RedirectAttributes reAttrs,
												@RequestParam(value = "pageNum", required = false, defaultValue="1") int pageNum,
												@RequestParam(value = "type", required = false, defaultValue = "null") String type,
												@RequestParam(value = "keyword", required = false, defaultValue = "null") String keyword,
												@RequestParam(value = "local", required = false, defaultValue = "noLocal") String[] local,
												@RequestParam(value = "bloodtype", required = false, defaultValue = "noBloodtype") String[] bloodtype,
												@RequestParam(value = "blood_donation", required = false, defaultValue = "noBloodDonation") String[] blood_donation) throws Exception {
		
		boolean result = boardService.isPassCheck(board.getNo(), board.getPass());
		
		if(! result) {
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("alert('비밀번호가 맞지 않습니다.')");
			out.println("history.back();");
			out.println("</script>");
			
			return null;
		}
		
		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true;
		
		boolean filterOption = (!local[0].equals("noLocal")) || (!bloodtype[0].equals("noBloodtype")) || (!blood_donation[0].equals("noBloodDonation"));
		
		boardService.updateBoard(board);
		
		reAttrs.addAttribute("searchOption", searchOption);
		reAttrs.addAttribute("filterOption", filterOption);
		
		if(searchOption) {
			
			reAttrs.addAttribute("type", type);
			reAttrs.addAttribute("keyword", keyword);

		}
		
		if(filterOption) {
			reAttrs.addAttribute("local", local);
			reAttrs.addAttribute("bloodtype", bloodtype);
			reAttrs.addAttribute("blood_donation", blood_donation);
		}
		
		reAttrs.addAttribute("pageNum", pageNum);
		
		return "redirect:matchingBoardList";
	}
	
	@RequestMapping({"/delete", "deleteMatchingBoard"})
	public String deleteBoard(HttpServletResponse response, PrintWriter out, int no, String pass, RedirectAttributes reAttrs,
											@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
											@RequestParam(value = "type", required = false, defaultValue = "null") String type,
											@RequestParam(value = "keyword", required = false, defaultValue = "null") String keyword,
											@RequestParam(value = "local", required = false, defaultValue = "noLocal") String[] local,
											@RequestParam(value = "bloodtype", required = false, defaultValue = "noBloodtype") String[] bloodtype,
											@RequestParam(value = "blood_donation", required = false, defaultValue = "noBloodDonation") String[] blood_donation) throws Exception {
		
		boolean result = boardService.isPassCheck(no, pass);
		
		if(! result) {
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("alert('비밀번호가 맞지 않습니다.')");
			out.println("history.back();");
			out.println("</script>");
			
			return null;
		}
		
		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true;
		
		boolean filterOption = (!local[0].equals("noLocal")) || (!bloodtype[0].equals("noBloodtype")) || (!blood_donation[0].equals("noBloodDonation"));
		
		boardService.deleteBoard(no);
		
		reAttrs.addAttribute("searchOption", searchOption);
		reAttrs.addAttribute("filterOption", filterOption);
		
		if(searchOption) {
			
			reAttrs.addAttribute("type", type);
			reAttrs.addAttribute("keyword", keyword);

		}
		
		if(filterOption) {
			reAttrs.addAttribute("local", local);
			reAttrs.addAttribute("bloodtype", bloodtype);
			reAttrs.addAttribute("blood_donation", blood_donation);
		}

		reAttrs.addAttribute("pageNum", pageNum);
		
		return "redirect:matchingBoardList";
	}
	
}
