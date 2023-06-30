package com.teamproject.theglory.kgh.service;

import java.util.List;
import java.util.Map;

import com.teamproject.theglory.kgh.domain.LocationMap;

public interface LocationMapService {
   	
	public abstract Map<String, Object> Map(int pageNum , String type);
	
	public abstract Map<String, Object> addressSearch(int pageNum , String type ,String locationAddress);
	
	public abstract Map<String, Object> areaSearch(int pageNum , String type , Integer areaNo);

}
