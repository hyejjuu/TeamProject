package com.teamproject.theglory.hhj95.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.hhj95.dao.MatchingBoardDao;
import com.teamproject.theglory.hhj95.domain.MatchingBoard;
import com.teamproject.theglory.hhj95.domain.MatchingReply;

@Service
public class MatchingBoardServiceImpl implements MatchingBoardService {
	
	@Autowired
	private MatchingBoardDao matchingBoardDao;

	public void setMatchingBoardDao(MatchingBoardDao matchingBoardDao) {
		this.matchingBoardDao = matchingBoardDao;
	}

	@Override
	public MatchingBoard getMatchingBoard(int no, boolean isCount) {
		
		if(isCount) {
			matchingBoardDao.incrementReadCount(no);
		}
		return matchingBoardDao.getBoard(no);
	}

	@Override
	public void insertBoard(MatchingBoard matchingBoard) {
		matchingBoardDao.insertBoard(matchingBoard);
	}

	@Override
	public boolean isPassCheck(int no, String pass) {
		
		boolean result = false;
		
		String dbPass = matchingBoardDao.isPassCheck(no, pass);
		
		if(dbPass.equals(pass)) {
			result = true;
		}
		
		return result;
	}

	@Override
	public void updateBoard(MatchingBoard matchingBoard) {
		matchingBoardDao.updateBoard(matchingBoard);
	}

	@Override
	public void deleteBoard(int no) {
		matchingBoardDao.deleteBoard(no);
	}
	
		// 한 페이지에 보여 줄 게시 글의 수를 상수로 선언
		private static final int PAGE_SIZE = 10;
		
		// 한 페이지에 보여질 페이지 그룹 수를 상수로 선언
		private static final int PAGE_GROUP = 10;
	
	@Override
	public Map<String, Object> matchingBoardList(int pageNum, String type, String keyword, String[] local, String[] bloodtype, String[] blood_donation) {
		
		// 요청 파라미터의 pageNum을 현재 페이지로 설정
		int currentPage = pageNum;
		// 요청한 페이지에 해당하는 게시 글 리스트의 첫 번쨰 행의 값을 계산
		int startRow = (currentPage - 1) * PAGE_SIZE;
		// 전체 게시 글 수
		int listCount = 0;
		
		// type이나 keyword의 요청 파라미터가 null 이면 false
		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true;
		
		listCount = matchingBoardDao.getBoardCount(type, keyword);
		
		// 현재 페이지에 해당하는 게시 글 리스트를 DB에서 읽어옴
		List<MatchingBoard> boardList = matchingBoardDao.matchingBoardList(startRow, PAGE_SIZE, type, keyword, local, bloodtype, blood_donation);
		
		// 페이지 그룹 이동 처리를 위해 전체 페이지를 계산
		int pageCount = listCount / PAGE_SIZE + (listCount % PAGE_SIZE == 0 ? 0 : 1);
		
		// 페이지 그룹 처리를 위해 그룹별 시작 페이지와 마지막 페이지를 계산
		int startPage = (currentPage / PAGE_GROUP) * PAGE_GROUP + 1 - (currentPage % PAGE_GROUP == 0 ? PAGE_GROUP : 0);
		
		// 현재 페이지 그룹의 마지막 페이지 (10, 20, 30...)
		int endPage = startPage + PAGE_GROUP -1;
		
		// 현재 페이지 그룹이 맨 마지막 그룹이면 endPage 는 전체 페이지 수가 되도록 지정
		if(endPage > pageCount) {
			endPage = pageCount;
		}
		
		// View 페이지에서 필요한 데이터를 Map에 저장
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		modelMap.put("boardList", boardList);
		modelMap.put("pageCount", pageCount);
		modelMap.put("startPage", startPage);
		modelMap.put("endPage", endPage);
		modelMap.put("currentPage", currentPage);
		modelMap.put("listCount", listCount);
		modelMap.put("pageGroup", PAGE_GROUP);
		modelMap.put("searchOption", searchOption);
		
		// 검색 요청이면 type과 keyword 모델에 저장
		if(searchOption) {
			modelMap.put("type", type);
			modelMap.put("keyword", keyword);
		}
		
		return modelMap;
	}

	@Override
	public List<MatchingReply> replyList(int no) {
		return matchingBoardDao.replyList(no);
	}

	@Override
	public Map<String, Integer> recommend(int no, String recommend) {
		
		matchingBoardDao.updateRecommend(no, recommend);
		MatchingBoard board = matchingBoardDao.getRecommend(no);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("recommend", board.getRecommend());
		map.put("thank", board.getThank());
		
		return map;
	}

	@Override
	public void addReply(MatchingReply reply) {
		matchingBoardDao.addReply(reply);
	}

	@Override
	public void updateReply(MatchingReply reply) {
		matchingBoardDao.updateReply(reply);
	}

	@Override
	public void deleteReply(int no) {
		matchingBoardDao.deleteReply(no);
	}

}