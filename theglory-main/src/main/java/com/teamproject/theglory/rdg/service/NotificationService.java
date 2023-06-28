package com.teamproject.theglory.rdg.service;

import java.util.Map;

import com.teamproject.theglory.rdg.domain.Notification;

public interface NotificationService {
	
	public abstract void insertNotification(Notification notification);

	public boolean isPassCheck(int no, String pass);
	
	public abstract void updateNotification(Notification notification);
	
	public abstract void deleteNotification(int no);
	
	public abstract Map<String, Object> notificationList(int pageNum, String type, String keyword);
	
	public abstract Notification getNotification(int no, boolean isCount);
}
