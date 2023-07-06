package com.teamproject.theglory.kgh.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.kgh.dao.LocationDao;
import com.teamproject.theglory.kgh.domain.LocationMap;


@Service
public class LocationMapServiceImpl implements LocationMapService {
    
	private static final int PAGE_SIZE = 10;

	private static final int PAGE_GROUP = 10;
	
	@Autowired
	private LocationDao locationDao;
	
	@Override
	public Map<String, Object> Map(int pageNum ,  String type) {		
		
		int currentPage = pageNum;
		
		int startRow = (currentPage - 1) * PAGE_SIZE;		
		int locationCount = 0;
		

					
		locationCount = locationDao.getLocationCount(type);		
		System.out.println("listCount : " + locationCount);
		
	   if(locationCount > 0) {
					
			List<LocationMap> locationList= locationDao.Map(startRow, PAGE_SIZE , type);
			
			int pageCount = 
					locationCount / PAGE_SIZE + (locationCount % PAGE_SIZE == 0 ? 0 : 1);
			
			int startPage = (currentPage / PAGE_GROUP) * PAGE_GROUP + 1
					- (currentPage % PAGE_GROUP == 0 ? PAGE_GROUP : 0);		
						
			int endPage = startPage + PAGE_GROUP - 1;
			
			if(endPage > pageCount) {
				endPage = pageCount;
			}

			Map<String, Object> modelMap = new HashMap<String, Object>();		
			
			modelMap.put("locationList", locationList);
			modelMap.put("pageCount", pageCount);
			modelMap.put("startPage", startPage);
			modelMap.put("endPage", endPage);
			modelMap.put("currentPage", currentPage);
			modelMap.put("locationCount", locationCount);
			modelMap.put("pageGroup", PAGE_GROUP);
			
			return modelMap;			
		} else {
			return null;
		}
				
	}
	
	@Override
	public Map<String, Object> addressSearch(int pageNum ,  String type , String locationAddress) {		
				
		int currentPage = pageNum;
		
		int startRow = (currentPage - 1) * PAGE_SIZE;		
		int locationCount = 0;
		
		boolean searchOption2 = (type.equals("null")) ? false : true; 
		
		locationCount = locationDao.getAddressCount(locationAddress);		
		System.out.println("listCount : " + locationCount  + " , 타입 :" + type + ", areaNo : " + locationAddress);
		
	   if(locationCount > 0) {
					
			List<LocationMap> locationList= locationDao.addressSearch(startRow, PAGE_SIZE, type , locationAddress);
			
			int pageCount = 
					locationCount / PAGE_SIZE + (locationCount % PAGE_SIZE == 0 ? 0 : 1);
			
			int startPage = (currentPage / PAGE_GROUP) * PAGE_GROUP + 1
					- (currentPage % PAGE_GROUP == 0 ? PAGE_GROUP : 0);		
						
			int endPage = startPage + PAGE_GROUP - 1;
			
			if(endPage > pageCount) {
				endPage = pageCount;
			}

			Map<String, Object> modelMap = new HashMap<String, Object>();		
			
			modelMap.put("locationList", locationList);
			modelMap.put("pageCount", pageCount);
			modelMap.put("startPage", startPage);
			modelMap.put("endPage", endPage);
			modelMap.put("currentPage", currentPage);
			modelMap.put("locationCount", locationCount);
			modelMap.put("pageGroup", PAGE_GROUP);			
	        modelMap.put("searchOption2", searchOption2);

			return modelMap;			
		} else {
			return null;
		}
	}

	@Override
	public Map<String, Object> areaSearch(int pageNum ,  String type , Integer areaNo) {
        
		int currentPage = pageNum;
		
		int startRow = (currentPage - 1) * PAGE_SIZE;		
		int locationCount = 0;
		
		boolean searchOption = (type.equals("null")) ? false : true; 
		
		locationCount = locationDao.getAreaCount(areaNo);		
		System.out.println("listCount : " + locationCount  + " , 타입 :" + type + ", areaNo : " + areaNo);
		
	   if(locationCount > 0) {
					
			List<LocationMap> areaList= locationDao.areaSearch(startRow, PAGE_SIZE, type , areaNo);
			
			int pageCount = 
					locationCount / PAGE_SIZE + (locationCount % PAGE_SIZE == 0 ? 0 : 1);
			
			int startPage = (currentPage / PAGE_GROUP) * PAGE_GROUP + 1
					- (currentPage % PAGE_GROUP == 0 ? PAGE_GROUP : 0);		
						
			int endPage = startPage + PAGE_GROUP - 1;
			
			if(endPage > pageCount) {
				endPage = pageCount;
			}

			Map<String, Object> modelMap = new HashMap<String, Object>();		
			
			modelMap.put("areaList", areaList);
			modelMap.put("pageCount2", pageCount);
			modelMap.put("startPage2", startPage);
			modelMap.put("endPage2", endPage);
			modelMap.put("currentPage2", currentPage);
			modelMap.put("locationCount", locationCount);
			modelMap.put("pageGroup2", PAGE_GROUP);			
	        modelMap.put("searchOption", searchOption);

			return modelMap;			
		} else {
			return null;
		}
	}

}
