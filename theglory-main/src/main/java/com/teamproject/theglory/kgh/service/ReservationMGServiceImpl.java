package com.teamproject.theglory.kgh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.theglory.kgh.dao.ReservationMGDao;
import com.teamproject.theglory.kgh.domain.ReservationMG;




@Service
public class ReservationMGServiceImpl implements ReservationMGService {
    
	@Autowired
	private ReservationMGDao reservationMGDao;
	
	@Override
	public List<ReservationMG> schedule() {
		
		return reservationMGDao.schedule();
	}

	@Override
	public List<ReservationMG> rsvOne(String rdate) {
		
		return reservationMGDao.rsvOne(rdate);
	}

	@Override
	public void rsvStateUpdate(int rNo) {
		reservationMGDao.rsvStateUpdate(rNo);;		
	}

}
