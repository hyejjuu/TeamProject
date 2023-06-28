package com.teamproject.theglory.rdg.dao;

import java.util.List;

import com.teamproject.theglory.rdg.domain.Notification;

public interface NotificationDao {
	
	public abstract List<Notification> notificationList(int startRow, int num, String type, String keyword);
	
	public abstract Notification getNotification(int no);
	
	public abstract void insertNotification(Notification notification);
	
	public String isPassCheck(int no, String pass);
	
	public abstract void updateNotification(Notification notification);
	
	public abstract void deleteNotification(int no);
	
	public abstract int getNotificationCount(String type, String keyword);
	
	public abstract void incrementReadCount(int no);
}
