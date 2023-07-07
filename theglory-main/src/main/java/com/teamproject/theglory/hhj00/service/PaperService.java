package com.teamproject.theglory.hhj00.service;

import com.teamproject.theglory.hhj00.domain.Paper;
import com.teamproject.theglory.kgh.domain.Member;

public interface PaperService {
	
	public void addPaper(Paper paper);
	
	Member getMember(String id);
	
}
