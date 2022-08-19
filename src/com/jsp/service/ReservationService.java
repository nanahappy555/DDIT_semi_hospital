package com.jsp.service;

import java.sql.SQLException;
import java.util.Map;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;
import com.jsp.dto.ReservationVO;


public interface ReservationService {
	

	//회원상세조회
	public ReservationVO getReservation(String rnum)throws SQLException;

	//예약 등록
	public void regist(ReservationVO reservation) throws Exception;
	
	
	//예약 삭제
	public void remove(String rnum)throws Exception; 
}
