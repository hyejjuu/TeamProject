package com.teamproject.theglory.hhj00.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.hhj00.domain.Paper;
import com.teamproject.theglory.kgh.domain.Member;

@Repository
public class PaperDaoImpl implements PaperDao {
	
	private SqlSessionTemplate sqlSession;
	
	private final String NAME_SPACE = "com.teamproject.theglory.mapper.PaperMapper";
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public Member getMember(String id) {
	    
		System.out.println(id);
		return sqlSession.selectOne(NAME_SPACE +".getMember", id); 
	}
	
	@Override
	public void addPaper(Paper paper) {
		
		sqlSession.insert(NAME_SPACE + ".addPaper", paper);
		
	}

}
