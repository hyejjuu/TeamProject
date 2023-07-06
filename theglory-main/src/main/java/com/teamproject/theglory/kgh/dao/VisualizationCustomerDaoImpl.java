package com.teamproject.theglory.kgh.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.kgh.domain.MnF;


@Repository
public class VisualizationCustomerDaoImpl implements VisualizationCustomerDao {
    
	private final String NAME_SPACE ="com.teamproject.theglory.mapper.DataMapper";
	
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public MnF balancMnF() {
		
		return sqlSession.selectOne(NAME_SPACE + ".MnFObject");
	}

}
