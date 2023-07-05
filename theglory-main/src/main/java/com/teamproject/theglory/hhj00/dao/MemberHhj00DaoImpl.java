package com.teamproject.theglory.hhj00.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.kgh.domain.Member;

 
@Repository
public class MemberHhj00DaoImpl implements MemberHhj00Dao {
		
	private SqlSessionTemplate sqlSession;
	

	private final String NAME_SPACE = "com.teamproject.theglory.mapper.MemberMapper";
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void addMember(Member member) {
		sqlSession.insert(NAME_SPACE + ".addMember", member);
	}
	
	public String memberPassCheck(String id) {
		return sqlSession.selectOne(NAME_SPACE + ".memberPassCheck", id);
	}
	
	public void updateMember(Member member) {
		sqlSession.update(NAME_SPACE + ".updateMember", member);
	}

}
