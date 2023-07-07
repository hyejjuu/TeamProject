package com.teamproject.theglory.hhj95.service;

import java.util.List;
import java.util.Map;


import com.teamproject.theglory.hhj95.domain.MatchingBoard;
import com.teamproject.theglory.hhj95.domain.MatchingReply;

public interface MatchingBoardService {

		// Dao를 이용해 댓글을 삭제하는 메서드
		void deleteReply(int no);
		
		// Dao를 이용해 댓글을 수정하는 메서드
		void updateReply(MatchingReply reply);
		
		// 게시 글 번호에 해당하는 댓글을 등록하는 메서드
		void addReply(MatchingReply reply);
		
		// 업데이트하고 갱신된 추천/떙큐를 가져오는 메서드
		Map<String, Integer> recommend(int no, String recommend);
		
		// 게시 글 번호에 해당하는 댓글 리스트를 반환하는 메서드
		List<MatchingReply> replyList(int no);
		
		// 현재 페이지에 해당하는 게시 글 반환
		public abstract Map<String, Object> matchingBoardList(int pageNum, String type, String keyword, String[] local, String[] bloodtype, String[] blood_donation);
		
		// no에 해당하는 게시 글 반환
		public abstract MatchingBoard getMatchingBoard(int no, boolean isCount);
		
		// 게시 글 추가
		public abstract void insertBoard(MatchingBoard matchingBoard);
		
		// 게시 글 수정, 삭제 시 비밀번호 맞는지 체크
		public boolean isPassCheck(int no, String pass);
		
		// 게시 글 수정 요청 시 호출
		abstract void updateBoard(MatchingBoard matchingBoard);

		// 게시 글 삭제 요청 시 호출
		abstract void deleteBoard(int no);
}
