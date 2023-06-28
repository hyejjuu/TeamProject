package com.teamproject.theglory.kgh.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.kgh.domain.LocationMap;


@Repository
public class LocationDaoImpl implements LocationDao {
    
	private final String NAME_SPACE = "com.teamproject.theglory.mapper.LocationMapper";
	
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<LocationMap> Map() {		
		return sqlSession.selectList(NAME_SPACE+".locationMap");
	}
	
	@Override
	public List<LocationMap> Map2(String locationAddress) {		
		return sqlSession.selectList(NAME_SPACE+".searchAction" , locationAddress);
	}

}
