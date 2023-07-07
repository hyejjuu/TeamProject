package com.teamproject.theglory.hhj00.dao;

import com.teamproject.theglory.hhj00.domain.Paper;
import com.teamproject.theglory.kgh.domain.Member;

public interface PaperDao {
	
	 Member getMember(String id);
	
	public void addPaper(Paper paper);
	
}
