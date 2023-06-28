package com.teamproject.theglory.kgh.service;

import java.util.List;

import com.teamproject.theglory.kgh.domain.LocationMap;

public interface LocationMapService {
   
	public abstract List<LocationMap> Map();
	
	public abstract List<LocationMap> Map2(String locationAddress);
	
}
