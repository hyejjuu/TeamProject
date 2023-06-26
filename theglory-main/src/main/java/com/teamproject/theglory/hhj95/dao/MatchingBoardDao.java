package com.teamproject.theglory.hhj95.dao;

import java.util.List;

import com.teamproject.theglory.hhj95.domain.MatchingBoard;
import com.teamproject.theglory.hhj95.domain.MatchingReply;

public interface MatchingBoardDao {

	// DB에서 댓글 번호에 해당하는 댓글을 삭제하는 메서드
		void deleteReply(int no);
		
		// DB에서 댓글 번호에 해당하는 댓글을 수정하는 메서드
		void updateReply(MatchingReply reply);
		
		// 게시 글 번호에 해당하는 댓글을 DB에 등록하는 메서드
		void addReply(MatchingReply reply);
		
		// 게시 글 번호에 해당하는 추천/땡큐 정보를 가져오는 메서드
		MatchingBoard getRecommend(int no);
		
		// 게시 글 번호에 해당하는 추천/떙큐를 업데이트 하는 메서드
		void updateRecommend(int no, String recommend);
		
		// 게시 글 번호에 해당하는 댓글 리스트를 가져오는 메서드
		List<MatchingReply> replyList(int no);
		
		// 게시 글을 조회한 횟수를 증가시키는 메서드
		public abstract void incrementReadCount(int no);
		
		// 한 페이지에 보여 질 게시 글 리스트 요청 시 호출되는 메서드
		public abstract List<MatchingBoard> matchingBoardList(int startRow, int num, String type, String keyword); 
		
		// DB 테이블에 등록된 모든 게시 글의 수를 반환하는 메서드
		public abstract int getBoardCount(String type, String keyword);
		
		// 게시 글 리스트 요청 시 호출되는 메서드
		public abstract List<MatchingBoard> matchingBoardList();
		
		// 게시 글 상세보기 요청 시 호출되는 메서드
		abstract MatchingBoard getBoard(int no);
		
		// 게시 글쓰기 요청 시 호출되는 메서드
		abstract void insertBoard(MatchingBoard matchingBoard);
		
		// 게시 글 수정, 삭제 시 비밀번호 체크에서 호출되는 메서드
		String isPassCheck(int no, String pass);
		
		// 게시 글 수정 요청 시 호출되는 메서드
		void updateBoard(MatchingBoard matchingBoard);
		
		// 게시 글 삭제 요청 시 호출되는 메서드
		void deleteBoard(int no);
	
}
