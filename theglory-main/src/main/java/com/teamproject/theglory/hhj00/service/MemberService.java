package com.teamproject.theglory.hhj00.service;

import com.teamproject.theglory.kgh.domain.Member;

public interface MemberService {
	
	// 회원 가입시 DAO를 이용해 아이디 중복을 체크하는 메서드
	public boolean overlapIdCheck(String id);
	
	// 회원 정보를 DAO를 이용해 회원 테이블에 저장하는 메서드
	public void addMember(Member member);
	
	
}
