package com.teamproject.theglory.kgh.service;

import com.teamproject.theglory.kgh.domain.Member;

public interface MemberService {
    	
	public int login(String id , String pass);
	
	Member getMember(String id);
	
}
