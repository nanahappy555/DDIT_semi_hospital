package com.jsp.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jsp.command.Criteria;
import com.jsp.command.PageMaker;
import com.jsp.dao.ReservationDAO;
import com.jsp.dto.MemberVO;
import com.jsp.dto.ReservationVO;


public class ReservationServiceImpl implements ReservationService {

	private ReservationDAO reservationDAO;
	public void setReservationDAO(ReservationDAO reservationDAO) {
		this.reservationDAO = reservationDAO;
	}
	
	@Override
	public ReservationVO getReservation(String rnum) throws SQLException {
		ReservationVO reservation = reservationDAO.selectReservationByRnum(rnum);
		return reservation;
	}
	

	@Override
	public void regist(ReservationVO reservation) throws Exception {
		reservationDAO.insertReservation(reservation);
		
	}


	@Override
	public void remove(String rnum) throws Exception {
		reservationDAO.deleteReservation(rnum);		
	}

}
