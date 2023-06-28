package com.teamproject.theglory.rdg.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.rdg.dao.NotificationDao;
import com.teamproject.theglory.rdg.domain.Notification;

@Service
public class NotificationServiceImpl implements NotificationService {
	
	private static final int PAGE_SIZE = 10;
	
	private static final int PAGE_GROUP = 10;
	
	@Autowired
	private NotificationDao notificationDao;
	
	public void setNotificationDao(NotificationDao notificationDao) {
		this.notificationDao = notificationDao;
	}
	
	@Override
	public Map<String, Object> notificationList(int pageNum, String type, String keyword) {
		
		int currentPage = pageNum;
		
		int startRow = (currentPage - 1) * PAGE_SIZE;
		int listCount = 0;
		
		boolean searchOption = (type.equals("null") || keyword.equals("null")) ? false : true;
		
		listCount = notificationDao.getNotificationCount(type, keyword);
		System.out.println("listCount : " + listCount + ", type : " + type + ", keyword : " + keyword);
		
		List<Notification> notificationList = notificationDao.notificationList(startRow, PAGE_SIZE, type, keyword);
		
		int pageCount = listCount / PAGE_SIZE + (listCount % PAGE_SIZE == 0 ? 0 : 1);
		int startPage = (currentPage / PAGE_GROUP) * PAGE_GROUP + 1	- (currentPage % PAGE_GROUP == 0 ? PAGE_GROUP : 0);
		int endPage = startPage + PAGE_GROUP - 1;
		
		if(endPage > pageCount) {
			endPage = pageCount;
			}

		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		modelMap.put("notificationList", notificationList);
		modelMap.put("pageCount", pageCount);
		modelMap.put("startPage", startPage);
		modelMap.put("endPage", endPage);
		modelMap.put("currentPage", currentPage);
		modelMap.put("listCount", listCount);
		modelMap.put("pageGroup", PAGE_GROUP);
		modelMap.put("searchOption", searchOption);
		
		if(searchOption) {
			
			modelMap.put("type", type);
			modelMap.put("keyword", keyword);
			
		}
		
		return modelMap;
		
	}

	@Override
	public Notification getNotification(int no, boolean isCount) {
	
		if(isCount) {
	
			notificationDao.incrementReadCount(no);
	
			}
	
		return notificationDao.getNotification(no);
		
	}

	@Override
	public void insertNotification(Notification notification) {
		notificationDao.insertNotification(notification);
	}

	public boolean isPassCheck(int no, String pass) {	
		
		boolean result = false;
		
		String dbPass = notificationDao.isPassCheck(no, pass);
		
		if(dbPass.equals(pass)) {
			result = true;		
		}
		
		return result;
	}
	
	@Override
	public void updateNotification(Notification notification) {
		notificationDao.updateNotification(notification);
	}

	@Override
	public void deleteNotification(int no) {
		notificationDao.deleteNotification(no);
	}
	
}
