package com.teamproject.theglory.rdg.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamproject.theglory.rdg.domain.Notification;

@Repository
public class NotificationDaoImpl implements NotificationDao {
									 
	private final String NAME_SPACE = "com.teamproject.theglory.mapper.NotificationMapper";
			
	private SqlSessionTemplate sqlSession;
			
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}	
		
	@Override
	public List<Notification> notificationList(int startRow, int num, String type, String keyword) {
				
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("startRow", startRow);
		params.put("num", num);
		params.put("type", type);
		params.put("keyword", keyword);
		
		return sqlSession.selectList(NAME_SPACE + ".notificationList", params);
	}
	
	@Override
	public int getNotificationCount(String type, String keyword) {
		
		Map<String, String> params = new HashMap<String, String>();
		
		params.put("type", type);
		params.put("keyword", keyword);
		return sqlSession.selectOne(NAME_SPACE + ".getNotificationCount", params);
		
	}
	
	@Override
	public Notification getNotification(int no) {		
			 
		return sqlSession.selectOne(NAME_SPACE + ".getNotification", no);
	}

	@Override
	public void insertNotification(Notification notification) {
		
		sqlSession.insert(NAME_SPACE + ".insertNotification", notification);
	}
	
	public String isPassCheck(int no, String pass) {
		
		return sqlSession.selectOne(NAME_SPACE + ".isPassCheck",	no);	
	}
	
	@Override
	public void updateNotification(Notification notification) {
		
		sqlSession.update(NAME_SPACE + ".updateNotification", notification);
	}

	@Override
	public void deleteNotification(int no) {
		
		sqlSession.delete(NAME_SPACE + ".deleteNotification", no);
	}
		
	
	@Override
	public void incrementReadCount(int no) {

		sqlSession.update(NAME_SPACE + ".incrementReadCount", no);
	}
}
