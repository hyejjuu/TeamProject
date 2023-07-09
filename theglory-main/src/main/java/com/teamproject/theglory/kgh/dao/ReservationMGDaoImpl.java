package com.teamproject.theglory.kgh.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.kgh.domain.ReservationMG;




@Repository
public class ReservationMGDaoImpl implements ReservationMGDao {
    
	private final String NAME_SPACE ="com.teamproject.theglory.mapper.ReservationMGMapper";
	
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<ReservationMG> schedule() {
		
		return sqlSession.selectList(NAME_SPACE+".rsvList");
	}

	@Override
	public List<ReservationMG> rsvOne(String rdate) {
		
		return sqlSession.selectList(NAME_SPACE+".rsvOne" , rdate);
	}

	@Override
	public void rsvStateUpdate(int rNo) {
		sqlSession.selectList(NAME_SPACE+".rsvStateUpdate" , rNo);		
	}

}
