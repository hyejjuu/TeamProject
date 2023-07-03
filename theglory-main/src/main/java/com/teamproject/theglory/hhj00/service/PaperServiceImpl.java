package com.teamproject.theglory.hhj00.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.hhj00.dao.PaperDao;
import com.teamproject.theglory.hhj00.domain.Paper;

@Service
public class PaperServiceImpl implements PaperService {
	
	@Autowired
	private PaperDao paperDao;
	
	public void setPaperDao(PaperDao paperDao) {
		this.paperDao = paperDao;
	}
	
	@Override
	public void addPaper(Paper paper) {
		
		paperDao.addPaper(paper);
		
	}

}
