package com.teamproject.theglory.kgh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.kgh.dao.LocationDao;
import com.teamproject.theglory.kgh.domain.LocationMap;


@Service
public class LocationMapServiceImpl implements LocationMapService {
    
	@Autowired
	private LocationDao locationDao;
	
	@Override
	public List<LocationMap> Map() {		
		
		return locationDao.Map();
		
	}
	
	@Override
	public List<LocationMap> addressSearch(String locationAddress) {		
				
		return locationDao.addressSearch(locationAddress);
		
	}

	@Override
	public List<LocationMap> areaSearch(int areaNo) {

		return locationDao.areaSearch(areaNo);
	}

}
