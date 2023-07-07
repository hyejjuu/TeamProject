package com.teamproject.theglory.hhj00.service;

import com.teamproject.theglory.kgh.domain.Member;

public interface MemberService {
	
	public boolean overlapIdCheck(String id);
	
	public void addMember(Member member);
	
	public boolean memberPassCheck(String id, String pass);
	
	public void updateMember(Member member);
	
}
