package com.teamproject.theglory.kgh.dao;

import java.util.List;
import java.util.Map;

import com.teamproject.theglory.kgh.domain.LocationMap;


public interface LocationDao {
   
	public abstract List<LocationMap> Map(int startRow, int num , String type);
	
	public abstract List<LocationMap> addressSearch(int startRow, int num, String type , String locationAddress);
	
	public abstract List<LocationMap> areaSearch(int startRow, int num , String type ,  Integer areaNo);
	
	public abstract int getLocationCount(String type);
	
	public abstract int getAreaCount(Integer areaNo);
	
	public abstract int getAddressCount(String locationAddress);
	
}
