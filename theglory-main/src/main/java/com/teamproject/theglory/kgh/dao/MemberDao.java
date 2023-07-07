package com.teamproject.theglory.kgh.dao;

import java.util.List;

import com.teamproject.theglory.kgh.domain.Member;

public interface MemberDao {
    
	 Member getMember(String id);	 	
	 
	 List<Member> listMember(); 
}
