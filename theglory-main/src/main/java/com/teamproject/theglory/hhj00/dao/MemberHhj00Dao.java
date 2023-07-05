package com.teamproject.theglory.hhj00.dao;

import com.teamproject.theglory.kgh.domain.Member;

public interface MemberHhj00Dao {
	
	public void addMember(Member member);
	
	public String memberPassCheck(String id);
	
	public void updateMember(Member member);
	
}
