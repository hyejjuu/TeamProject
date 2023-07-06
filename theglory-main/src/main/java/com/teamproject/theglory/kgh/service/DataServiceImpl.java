package com.teamproject.theglory.kgh.service;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.kgh.dao.DataDaoImpl;
import com.teamproject.theglory.kgh.domain.AgeData;
import com.teamproject.theglory.kgh.domain.AreaData;


@Service
public class DataServiceImpl implements DataService {
     
	@Autowired
	private DataDaoImpl DataDao;
	
	@Override
	public List<Integer> groupAge() {
		AgeData age= DataDao.groupAge();
		
		List<Integer> ageData = new ArrayList<Integer>();
		
		ageData.add(age.getTeens());
		ageData.add(age.getTwenty());
		ageData.add(age.getThirty());
		ageData.add(age.getForty());
		ageData.add(age.getFifty());
		ageData.add(age.getOversixty());
		
		return ageData;
	}

	@Override
	public List<Integer> areadata() {
		AreaData area = DataDao.areadata();
		
		List<Integer> areaData = new ArrayList<Integer>();
		
		areaData.add(area.getSeoulCenter());
		areaData.add(area.getSeoulSouth());
		areaData.add(area.getSeoulEast());
		areaData.add(area.getBusan());
		areaData.add(area.getDaegu());
		areaData.add(area.getIncheon());
		areaData.add(area.getUlsan());
		areaData.add(area.getGyeonggi());
		areaData.add(area.getGangwon());
		areaData.add(area.getChungbuk());
		areaData.add(area.getSejong());
		areaData.add(area.getJeonbuk());
		areaData.add(area.getGyeongnam());
		areaData.add(area.getJejul());
		areaData.add(area.getGwangju());
		areaData.add(area.getTotal());
		
		return areaData;
	}

}
