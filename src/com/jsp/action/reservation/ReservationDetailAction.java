package com.jsp.action.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.dto.MemberVO;
import com.jsp.dto.ReservationVO;
import com.jsp.service.MemberService;
import com.jsp.service.ReservationService;

public class ReservationDetailAction implements Action {

	private ReservationService reservationService;
	public void setSearchReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/reservation/detail";

		String rnum = request.getParameter("rnum");
		
		

		try {
			ReservationVO reservation = reservationService.getReservation(rnum);
			
			request.setAttribute("reservation", reservation);
			
		}catch(Exception e) {
			e.printStackTrace();
			// ........
			url = "/member/detail_fail";
			//response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		}

		return url;
	}

}
