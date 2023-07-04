package com.teamproject.theglory.hhj00.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.kgh.domain.Member;


 // 이 클래스가 데이터 액세스(데이터 저장소) 계층의 컴포넌트임을 선언한다. 
@Repository
public class MemberHhj00DaoImpl implements MemberHhj00Dao {
		
	private SqlSessionTemplate sqlSession;
	

	private final String NAME_SPACE = "com.teamproject.theglory.mapper.MemberMapper";
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	// 회원 정보를 회원 테이블에 저장하는 메서드
	@Override
	public void addMember(Member member) {
		sqlSession.insert(NAME_SPACE + ".addMember", member);
	}
	

}
