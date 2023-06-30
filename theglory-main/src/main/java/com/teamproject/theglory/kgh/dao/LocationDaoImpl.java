package com.teamproject.theglory.kgh.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<LocationMap> Map(int startRow, int num , String type) {		
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("type",  type);
		params.put("startRow", startRow);
		params.put("num", num);
	
		return sqlSession.selectList(NAME_SPACE+".locationMap",params);
	}
	
	@Override
	public List<LocationMap> addressSearch(int startRow, int num, String type ,String locationAddress) {		
		
		Map<String, Object> params = new HashMap<String, Object>();
		
		params.put("type",  type);
		params.put("startRow", startRow);
		params.put("num", num);
		params.put("locationAddress", locationAddress);
		
		return sqlSession.selectList(NAME_SPACE+".addressAction" , params);
	}

	@Override
	public List<LocationMap> areaSearch(int startRow, int num, String type , Integer areaNo) {
		
		Map<String, Object> params = new HashMap<String, Object>();
		
		params.put("type",  type);
		params.put("startRow", startRow);
		params.put("num", num);
		params.put("areaNo", areaNo);
		
		return sqlSession.selectList(NAME_SPACE+".areaAction" , params);
	}
	
	@Override
	public int getLocationCount(String type) {
		
	    Map<String, Object> params = new HashMap<String, Object>();
		
		params.put("type",  type);

		return sqlSession.selectOne(NAME_SPACE + ".getLocationCount" , params);

	}
	
	@Override
	public int getAreaCount(Integer areaNo) {

		return sqlSession.selectOne(NAME_SPACE + ".getAreaCount" , areaNo);

	}

	@Override
	public int getAddressCount(String locationAddress) {
		
		return sqlSession.selectOne(NAME_SPACE + ".getAddressCount" , locationAddress);
	}


}
