package com.teamproject.theglory.kgh.dao;

import java.util.List;

import com.teamproject.theglory.kgh.domain.ReservationMG;
import com.teamproject.theglory.khj.domain.Reservation;


public interface ReservationMGDao {
     
		public List<ReservationMG> schedule(); 
		
		public List<ReservationMG> rsvOne(String rdate); 	 
		
		void rsvStateUpdate(int rNo); 	 
}
