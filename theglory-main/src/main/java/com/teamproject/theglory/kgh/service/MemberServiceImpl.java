package com.teamproject.theglory.kgh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.kgh.dao.MemberDao;
import com.teamproject.theglory.kgh.domain.Member;


@Service
public class MemberServiceImpl implements MemberService {
    
	@Autowired
	private MemberDao memberDao;
	
	
	@Override
	public int login(String id, String pass) {
        Member member = memberDao.getMember(id);
        System.out.println("getId : "+member.getId());
        System.out.println("getPass : "+member.getPass());
        System.out.println(id);
        System.out.println(pass);
                
        int result;
        
     
        
        if(pass.equals(member.getPass())) {
        	result = 1;
        } else {
        	result=0;
        }
		
		return result;
	}

	@Override
	public Member getMember(String id) {
        System.out.println(id);
		return memberDao.getMember(id);
		
	}
	
	@Override
	public List<Member> listMember() {
		return memberDao.listMember();
	}

}
