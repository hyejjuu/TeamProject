package com.teamproject.theglory.kgh.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.kgh.dao.VisualizationCustomerDao;
import com.teamproject.theglory.kgh.domain.MnF;



@Service
public class VisualizationCustomerServiceImpl implements VisualizationCustomerService {
    
	@Autowired
	private VisualizationCustomerDao visualizationCustomerDao;
	
	@Override
	public List<Integer> balancMnF() {
		
		MnF mf = visualizationCustomerDao.balancMnF();
		List<Integer> mfData = new ArrayList<Integer>();
		
		mfData.add(mf.getMale());
		mfData.add(mf.getFemale());
				
		return mfData;
	}

}
