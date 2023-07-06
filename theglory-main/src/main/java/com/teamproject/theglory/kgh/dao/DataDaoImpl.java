package com.teamproject.theglory.kgh.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.kgh.domain.AgeData;
import com.teamproject.theglory.kgh.domain.AreaData;



@Repository
public class DataDaoImpl implements DataDao {
   
	private final String NAME_SPACE ="com.teamproject.theglory.mapper.DataMapper";
	
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
		
	@Override
	public AgeData groupAge() {
		return sqlSession.selectOne(NAME_SPACE+".ageObject");	
	}

	@Override
	public AreaData areadata() {
		
		return sqlSession.selectOne(NAME_SPACE+".areaObject");
	}

}
