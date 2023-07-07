package com.teamproject.theglory.hhj95.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.hhj95.domain.MatchingBoard;
import com.teamproject.theglory.hhj95.domain.MatchingReply;

@Repository
public class MatchingBoardDaoImpl implements MatchingBoardDao {

	private final String NAME_SPACE = "com.teamproject.theglory.mapper.MatchingBoardMapper";
	
	private SqlSessionTemplate sqlSession;

	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<MatchingBoard> matchingBoardList() {
		return sqlSession.selectList(NAME_SPACE + ".matchingBoardList");
	}

	@Override
	public MatchingBoard getBoard(int no) {
		return sqlSession.selectOne(NAME_SPACE + ".getBoard", no);
	}

	@Override
	public void insertBoard(MatchingBoard matchingBoard) {
		sqlSession.insert(NAME_SPACE + ".insertBoard", matchingBoard);
	}

	@Override
	public String isPassCheck(int no, String pass) {
		return sqlSession.selectOne(NAME_SPACE + ".isPassCheck", no);
	}

	@Override
	public void updateBoard(MatchingBoard matchingBoard) {
		sqlSession.update(NAME_SPACE + ".updateBoard", matchingBoard);
	}

	@Override
	public void deleteBoard(int no) {
		sqlSession.delete(NAME_SPACE + ".deleteBoard", no);
	}

	@Override
	public List<MatchingBoard> matchingBoardList(int startRow, int num, String type, String keyword, String[] local, String[] bloodtype, String[] blood_donation) {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("startRow", startRow);
		params.put("num", num);
		params.put("type", type);
		params.put("keyword", keyword);
		params.put("local", local);
		params.put("bloodtype", bloodtype);
		params.put("blood_donation", blood_donation);
		
		return sqlSession.selectList(NAME_SPACE + ".matchingBoardList", params);
	}

	@Override
	public int getBoardCount(String type, String keyword, String[] local, String[] bloodtype, String[] blood_donation) {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("type", type);
		params.put("keyword", keyword);
		params.put("local", local);
		params.put("bloodtype", bloodtype);
		params.put("blood_donation", blood_donation);

		return sqlSession.selectOne(NAME_SPACE + ".getBoardCount", params);
	}
	@Override
	public void incrementReadCount(int no) {
		sqlSession.update(NAME_SPACE + ".incrementReadCount", no);
	}

	@Override
	public List<MatchingReply> replyList(int no) {
		return sqlSession.selectList(NAME_SPACE + ".replyList", no);
	}

	@Override
	public MatchingBoard getRecommend(int no) {
		return sqlSession.selectOne(NAME_SPACE + ".getRecommend", no);
	}

	@Override
	public void updateRecommend(int no, String recommend) {
		
		Map<String, Object> params = new HashMap<String, Object>();
		
		params.put("no", no);
		params.put("recommend", recommend);
		
		sqlSession.update(NAME_SPACE + ".updateRecommend", params);
	}

	@Override
	public void addReply(MatchingReply reply) {
		sqlSession.insert(NAME_SPACE + ".addReply", reply);
	}

	@Override
	public void updateReply(MatchingReply reply) {
		sqlSession.update(NAME_SPACE + ".updateReply", reply);
	}

	@Override
	public void deleteReply(int no) {
		sqlSession.delete(NAME_SPACE + ".deleteReply", no);
	}
	
}
