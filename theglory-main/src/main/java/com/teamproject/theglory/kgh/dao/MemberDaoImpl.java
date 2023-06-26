package com.teamproject.theglory.kgh.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.kgh.domain.Member;


@Repository
public class MemberDaoImpl implements MemberDao {
    
	private final String NAME_SPACE = "com.teamproject.theglory.mapper.MemberMapper";
	
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public Member getMember(String id) {
	    
		System.out.println("Dao~~"+id);
		return sqlSession.selectOne(NAME_SPACE +".getMember", id); 
}

}