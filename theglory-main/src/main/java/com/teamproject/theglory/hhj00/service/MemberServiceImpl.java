package com.teamproject.theglory.hhj00.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.hhj00.dao.MemberHhj00Dao;
import com.teamproject.theglory.kgh.dao.MemberDao;
import com.teamproject.theglory.kgh.domain.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService {
	
	@Value("${coolsms.apiKey}")
    private String apiKey;

    @Value("${coolsms.apiSecret}")
    private String apiSecret;
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private MemberHhj00Dao memberHhj00Dao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}	
	
	public void setMemberHhj00Dao(MemberHhj00Dao memberHhj00Dao) {
		this.memberHhj00Dao = memberHhj00Dao;
	}	
	
	// 회원 가입 아이디 중복을 체크
	@Override
	public boolean overlapIdCheck(String id) {
		Member member = memberDao.getMember(id);
		System.out.println("overlapIdCheck - member : " + member);
		if(member == null) {
			return false;
		}
		return true;
	}
	
	@Override
	public void addMember(Member member) {
		
		member.setPass(passwordEncoder.encode(member.getPass()));
		
		System.out.println(member.getPass());
		memberHhj00Dao.addMember(member);
	}
	
	public boolean memberPassCheck(String id, String pass) {
		
		String dbPass = memberHhj00Dao.memberPassCheck(id);
		boolean result = false;
		
		if(passwordEncoder.matches(pass, dbPass)) {
			result = true;
		}
			return result;
	}
		
		public void updateMember(Member member) {
			
			member.setPass(passwordEncoder.encode(member.getPass()));
			
			System.out.println(member.getPass());
			
			memberHhj00Dao.updateMember(member);
		}
	
}
