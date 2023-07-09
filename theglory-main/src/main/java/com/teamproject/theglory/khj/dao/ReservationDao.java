package com.teamproject.theglory.khj.dao;

import java.util.List;

import com.teamproject.theglory.khj.domain.Reservation;

public interface ReservationDao {
	
	
	public abstract List<Reservation> resvBldHousStep1();
	
	public abstract List<Reservation> resvBldHousStep2();
	
	//해당 날짜에 예약 스케줄 일정 가져오는 메서드
	public abstract List<Reservation> resvOneSelect(String reservationDate, int locationNo);  
	
	public abstract List<Reservation> resvBldHousStep4();
	
	public abstract List<Reservation> resvBldHousStep5();
	
	//예약한 내용을 Reservation 객체로 받아 DB에 추가하는 메서드
	public abstract void insertReservation(Reservation r);

	//예약 변경 요청시 호출 되는 메서드
	public abstract void updateReservation(Reservation r);

	// 예약 취소 요청시 호출되는 메서드 - Reservation 객체로 받아 DB에 삭제
	public abstract void deleteReservation(int reservationNo);
	
	public abstract String getLocationName(int locationNo);
}
