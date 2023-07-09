package com.teamproject.theglory.khj.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.teamproject.theglory.khj.dao.ReservationDao;
import com.teamproject.theglory.khj.domain.Reservation;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	private ReservationDao reservationDao;

	@Override
	public List<Reservation> resvBldHousStep1() {		
		return reservationDao.resvBldHousStep1();
	}

	@Override
	public List<Reservation> resvBldHousStep2() {		
		return reservationDao.resvBldHousStep2();
	}
	
	@Override
	public Map<String, Object> resvOneSelect(String reservationDate, int locationNo) throws Exception {
		
		Calendar cal = Calendar.getInstance();
		
		if(reservationDate.equals("null")) { // 날짜가 입력되지 않은 상태일 때 - 처음 요청시 발생
			
			// 현재 날짜 + 1일차로 지정			
			int year = cal.get(Calendar.YEAR);
			int month = cal.get(Calendar.MONTH) + 1;
			int day = cal.get(Calendar.DAY_OF_MONTH) + 1; 			
			reservationDate = "" + year +(month < 10 ? "0" + month : month) + (day < 10 ? "0" + day : day);
			
		} else {
			cal.set(Calendar.YEAR, Integer.parseInt(reservationDate.substring(0, 4)));
			cal.set(Calendar.MONTH, Integer.parseInt(reservationDate.substring(4, 6)) - 1);
			cal.set(Calendar.DAY_OF_MONTH, Integer.parseInt(reservationDate.substring(6)) - 1);
		}		
		
		String[] weekdays = {"일", "월","화", "수", "목", "금", "토"};
		System.out.println("요일 : " + cal.get(Calendar.DAY_OF_WEEK));
		String weekday = weekdays[cal.get(Calendar.DAY_OF_WEEK)];		 
		String reqDate = reservationDate.substring(0, 4) + "년 " + reservationDate.substring(4, 6) + "월 " 
										+ reservationDate.substring(6) + "일(" + weekday + ") 예약";		
		
		String locationName = reservationDao.getLocationName(locationNo);
		
		List<Reservation> rsvList = reservationDao.resvOneSelect(reservationDate, locationNo);
		
		// 예약이 안 된 것을 찾기 위해서 시간 대 별로 donationtypeNo를 1차 저장할 리스트 생성 
		List<List<Integer>> list  = new ArrayList<List<Integer>>();
		List<String> timeList = new ArrayList<String>();
		int startTime = 900;
		
		for(int i = 0; i < 21; i++) {
			list.add(new ArrayList<Integer>());
			
			if(i % 2 == 0) {				
				if(i == 0) {
					timeList.add("0" + startTime);
				} else {
					startTime += 70;
					timeList.add("" + startTime);
				}
				
			} else if(i % 2 != 0) {
				startTime += 30;
				if(i == 1) {					
					timeList.add("0" + startTime);
				} else {
					timeList.add("" + startTime);
				}
			} 
		}
		System.out.println("timeList : " + timeList);
		
		
		// DB에서 가져온 데이터를 반복하면서 시간 대 별 donationtypeNo를 리스트에 저장
		for(int i = 0; i < rsvList.size(); i++) {
			Reservation rsv = rsvList.get(i);		
						
			if(rsv.getReservationTime().equals("0900") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(0);
				noList.add(1);	
				
			} else if(rsv.getReservationTime().equals("0900") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(0);
				noList.add(2);									
				
			} else if(rsv.getReservationTime().equals("0900") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(0);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("0900") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(0);
				noList.add(4);	
				
			} else if(rsv.getReservationTime().equals("0930") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(1);
				noList.add(1);		
				
			} else if(rsv.getReservationTime().equals("0930") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(1);
				noList.add(2);		
				
			} else if(rsv.getReservationTime().equals("0930") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(1);
				noList.add(3);		
				
			} else if(rsv.getReservationTime().equals("0930") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(1);
				noList.add(4);			
				
			} else if(rsv.getReservationTime().equals("1000") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(2);
				noList.add(1);			
				
				
			} else if(rsv.getReservationTime().equals("1000") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(2);
				noList.add(2);					
				
			} else if(rsv.getReservationTime().equals("1000") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(2);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("1000") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(2);
				noList.add(4);		
				
			} else if(rsv.getReservationTime().equals("1030") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(3);
				noList.add(1);		
				
			} else if(rsv.getReservationTime().equals("1030") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(3);
				noList.add(2);		
				
			} else if(rsv.getReservationTime().equals("1030") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(3);
				noList.add(3);		
				
			} else if(rsv.getReservationTime().equals("1030") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(3);
				noList.add(4);	
				
			} else if(rsv.getReservationTime().equals("1100") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(4);
				noList.add(1);			
				
				
			} else if(rsv.getReservationTime().equals("1100") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(4);
				noList.add(2);				
				
			} else if(rsv.getReservationTime().equals("1100") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(4);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("1100") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(4);
				noList.add(4);	
				
			} else if(rsv.getReservationTime().equals("1130") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(5);
				noList.add(1);		
				
			} else if(rsv.getReservationTime().equals("1130") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(5);
				noList.add(2);		
				
			} else if(rsv.getReservationTime().equals("1130") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(5);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("1130") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(5);
				noList.add(4);	
				
			} else if(rsv.getReservationTime().equals("1200") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(6);
				noList.add(1);				
				
			} else if(rsv.getReservationTime().equals("1200") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(6);
				noList.add(2);				
				
			} else if(rsv.getReservationTime().equals("1200") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(6);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("1200") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(6);
				noList.add(4);			
				
			} else if(rsv.getReservationTime().equals("1230") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(7);
				noList.add(1);			
				
			} else if(rsv.getReservationTime().equals("1230") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(7);
				noList.add(2);	
				
			} else if(rsv.getReservationTime().equals("1230") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(7);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("1230") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(7);
				noList.add(4);		
				
			} else if(rsv.getReservationTime().equals("1300") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(8);
				noList.add(1);					
				
			} else if(rsv.getReservationTime().equals("1300") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(8);
				noList.add(2);				
				
			} else if(rsv.getReservationTime().equals("1300") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(8);
				noList.add(3);		;
				
			} else if(rsv.getReservationTime().equals("1300") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(8);
				noList.add(4);		
				
			} else if(rsv.getReservationTime().equals("1330") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(9);
				noList.add(1);			
				
			} else if(rsv.getReservationTime().equals("1330") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(9);
				noList.add(2);		
				
			} else if(rsv.getReservationTime().equals("1330") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(9);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("1330") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(9);
				noList.add(4);		
				
			} else if(rsv.getReservationTime().equals("1400") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(10);
				noList.add(1);					
				
			} else if(rsv.getReservationTime().equals("1400") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(10);
				noList.add(2);			
				
			} else if(rsv.getReservationTime().equals("1400") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(10);
				noList.add(3);		
				
			} else if(rsv.getReservationTime().equals("1400") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(10);
				noList.add(4);	
				
			} else if(rsv.getReservationTime().equals("1430") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(11);
				noList.add(1);		
				
			} else if(rsv.getReservationTime().equals("1430") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(11);
				noList.add(2);		
				
			} else if(rsv.getReservationTime().equals("1430") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(11);
				noList.add(3);		
				
			} else if(rsv.getReservationTime().equals("1430") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(11);
				noList.add(4);	
				
			} else if(rsv.getReservationTime().equals("1500") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(12);
				noList.add(1);						
				
			} else if(rsv.getReservationTime().equals("1500") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(12);
				noList.add(2);					
				
			} else if(rsv.getReservationTime().equals("1500") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(12);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("1500") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(12);
				noList.add(4);	
				
			} else if(rsv.getReservationTime().equals("1530") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(13);
				noList.add(1);	
				
			} else if(rsv.getReservationTime().equals("1530") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(13);
				noList.add(2);	
				
			} else if(rsv.getReservationTime().equals("1530") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(13);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("1530") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(13);
				noList.add(4);		
				
			} else if(rsv.getReservationTime().equals("1600") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(14);
				noList.add(1);		
				
			} else if(rsv.getReservationTime().equals("1600") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(14);
				noList.add(2);				
				
			} else if(rsv.getReservationTime().equals("1600") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(14);
				noList.add(3);		
				
			} else if(rsv.getReservationTime().equals("1600") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(14);
				noList.add(4);	
				
			} else if(rsv.getReservationTime().equals("1630") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(15);
				noList.add(1);	
				
			} else if(rsv.getReservationTime().equals("1630") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(15);
				noList.add(2);		
				
			} else if(rsv.getReservationTime().equals("1630") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(15);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("1630") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(15);
				noList.add(4);		
				
			} else if(rsv.getReservationTime().equals("1700") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(16);
				noList.add(1);				
				
			} else if(rsv.getReservationTime().equals("1700") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(16);
				noList.add(2);						
				
			} else if(rsv.getReservationTime().equals("1700") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(16);
				noList.add(3);	;
				
			} else if(rsv.getReservationTime().equals("1700") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(16);
				noList.add(4);	
				
			} else if(rsv.getReservationTime().equals("1730") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(17);
				noList.add(1);		
				
			} else if(rsv.getReservationTime().equals("1730") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(17);
				noList.add(2);	
				
			} else if(rsv.getReservationTime().equals("1730") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(17);
				noList.add(3);		
				
			} else if(rsv.getReservationTime().equals("1730") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(17);
				noList.add(4);	
				
			} else if(rsv.getReservationTime().equals("1800") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(18);
				noList.add(1);						
				
			} else if(rsv.getReservationTime().equals("1800") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(18);
				noList.add(2);			
				
			} else if(rsv.getReservationTime().equals("1800") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(18);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("1800") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(18);
				noList.add(4);		
				
			} else if(rsv.getReservationTime().equals("1830") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(19);
				noList.add(1);		
				
			} else if(rsv.getReservationTime().equals("1830") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(19);
				noList.add(2);		
				
			} else if(rsv.getReservationTime().equals("1830") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(19);
				noList.add(3);		
				
			} else if(rsv.getReservationTime().equals("1830") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(19);
				noList.add(4);		
				
			} else if(rsv.getReservationTime().equals("1900") && rsv.getDonationTypeNo() == 1) {
				List<Integer> noList = list.get(20);
				noList.add(1);						
				
			} else if(rsv.getReservationTime().equals("1900") && rsv.getDonationTypeNo() == 2) {
				List<Integer> noList = list.get(20);
				noList.add(2);				
				
			} else if(rsv.getReservationTime().equals("1900") && rsv.getDonationTypeNo() == 3) {
				List<Integer> noList = list.get(20);
				noList.add(3);	
				
			} else if(rsv.getReservationTime().equals("1900") && rsv.getDonationTypeNo() == 4) {
				List<Integer> noList = list.get(20);
				noList.add(4);	
				
			}
		}		
		System.out.println("정리한 리스트 : " + list);
		
		// 시간 대 별로 donationtypeNo를 정리한 리스트에서 뷰에서 출력하기 편하도록 
		// 예약된 데이터는 false, 예약이 않된 데이터는 true 설정해 리스트에 저장 
		List<List<Boolean>> resultList  = new ArrayList<List<Boolean>>();
		for(List<Integer> dtNoList : list) {
			List<Boolean> temp  = new ArrayList<Boolean>();
			temp.add(!dtNoList.contains(1));
			temp.add(!dtNoList.contains(2));
			temp.add(!dtNoList.contains(3));
			temp.add(!dtNoList.contains(4));	
			
			resultList.add(temp);
		}
		
		System.out.println("최종 리스트 : "  + resultList);
		System.out.println("요청일 : " + reservationDate);		
		System.out.println("요일 : " + reqDate);
		
		Map<String, Object> resultMap = new 	HashMap<String, Object>();		
		resultMap.put("timeList", timeList);
		resultMap.put("reqDate", reqDate);
		resultMap.put("resultList", resultList);
		resultMap.put("reservationDate", reservationDate);
		resultMap.put("locationName", locationName);
		
		return resultMap;
	}
	
	@Override
	public List<Reservation> resvBldHousStep4() {
		return reservationDao.resvBldHousStep4();
	}
	
	@Override
	public
	List<Reservation> resvBldHousStep5() {
		return reservationDao.resvBldHousStep5();
	}

	@Override
	public void insertReservation(Reservation r) {
		reservationDao.insertReservation(r);
		
	}

	@Override
	public void updateReservation(Reservation r) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteReservation(int reservationNo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Reservation> getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
