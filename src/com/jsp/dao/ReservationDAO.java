package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.ReservationVO;

public interface ReservationDAO {
	

	
	ReservationVO selectReservationByRnum(String rnum)throws SQLException;
	
	
	// 예약 추가
	public void insertReservation(ReservationVO reservation) throws SQLException;
	

	// 예약 삭제
	void deleteReservation(String rnum) throws SQLException;

}	
