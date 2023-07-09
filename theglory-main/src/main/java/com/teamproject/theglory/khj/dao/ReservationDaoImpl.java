package com.teamproject.theglory.khj.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.khj.domain.Reservation;

@Repository
public class ReservationDaoImpl implements ReservationDao {
	
	private final String NAME_SPACE = "com.teamproject.theglory.mapper.ReservationMapper";
	

	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public String getLocationName(int locationNo) {
		return sqlSession.selectOne(NAME_SPACE + ".getLocationName", locationNo);
	}
	
	
	@Override
	public List<Reservation> resvBldHousStep1() {
		return sqlSession.selectList(NAME_SPACE + ".resvBldHousStep1");		
	}
	
	@Override
	public List<Reservation> resvBldHousStep2() {
		return sqlSession.selectList(NAME_SPACE + ".resvBldHousStep2");		
	}
	
	@Override
	public List<Reservation> resvOneSelect(String reservationDate, int locationNo) {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("reservationDate", reservationDate);
		params.put("locationNo", locationNo);
		
		return sqlSession.selectList(NAME_SPACE+".resvOneSelect", params);
	}

	@Override
	public List<Reservation> resvBldHousStep4() {
		
		return sqlSession.selectList(NAME_SPACE + ".resvBldHousStep4");		
	}

	
	
	@Override
	public List<Reservation> resvBldHousStep5() {
		
		return sqlSession.selectList(NAME_SPACE + ".resvBldHousStep4");		
	}

	@Override
	public void insertReservation(Reservation r) {
		sqlSession.insert(NAME_SPACE + ".insertReservation", r);
	}

	@Override
	public void updateReservation(Reservation r) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteReservation(int reservationNo) {
		// TODO Auto-generated method stub
		
	}
	
	
	


}
