package com.jsp.action.reservation;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.action.Action;
import com.jsp.dto.ReservationVO;
import com.jsp.service.MemberService;
import com.jsp.service.ReservationService;

public class ResrvationRemoveAction implements Action {

	private ReservationService reservationService;
	public void setSearchMemberService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/member/remove_success";
		
		String rnum = request.getParameter("rnum");
		
		ReservationVO reservation = reservationService.getReservation(rnum);
		
		
		
		// DB 삭제
		reservationService.remove(rnum);
		
		
		request.setAttribute("reservation", reservation);
		
		return url;
	}

}
