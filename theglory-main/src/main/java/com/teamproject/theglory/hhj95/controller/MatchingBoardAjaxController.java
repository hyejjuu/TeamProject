package com.teamproject.theglory.hhj95.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamproject.theglory.hhj95.domain.MatchingReply;
import com.teamproject.theglory.hhj95.service.MatchingBoardService;

@Controller
public class MatchingBoardAjaxController {
	
	@Autowired
	MatchingBoardService boardService;
	
	// 추천/땡큐 요청을 처리하는 메서드
	@RequestMapping("/recommend.ajax")
	@ResponseBody
	public Map<String, Integer> recommend(int no, String recommend) {
		return boardService.recommend(no, recommend);
	}
	
	// 댓글 쓰기 요청을 처리하는 메서드
	@RequestMapping("/replyWrite.ajax")
	@ResponseBody
	public List<MatchingReply> addReply(MatchingReply reply) {
		
		boardService.addReply(reply);
		return boardService.replyList(reply.getMatchNo());
	}
	
	// 댓글 수정 요청을 처리하는 메서드
	@RequestMapping("/replyUpdate.ajax")
	@ResponseBody
	public List<MatchingReply> updateReply(MatchingReply reply) {
		
		boardService.updateReply(reply);
		
		return boardService.replyList(reply.getMatchNo());
	}
	
	// 댓글 삭제 요청을 처리하는 메서드
	@RequestMapping("/replyDelete.ajax")
	@ResponseBody
	public List<MatchingReply> deleteReply(int no, int matchNo) {
		
		boardService.deleteReply(no);
		
		return boardService.replyList(matchNo);
	}
}
