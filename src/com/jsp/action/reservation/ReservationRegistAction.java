package com.jsp.action.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.dto.ReservationVO;
import com.jsp.service.ReservationService;

public class ReservationRegistAction implements Action {

	private ReservationService service;
	public void setReservationService(ReservationService service) {
		this.service = service;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 화면
		String url = "/reservation/reservation_success";

		// 입력
		try {

			request.setCharacterEncoding("utf-8");

			String rnum = request.getParameter("rnum");
			String rdate = request.getParameter("rdate");
			String rtime = request.getParameter("rtime");
			int mcode = Integer.parseInt(request.getParameter("mcode"));
			int dcode = Integer.parseInt(request.getParameter("dcode"));

			System.out.println("rnum" + rnum);
			System.out.println("rdate" + rdate);
			System.out.println("rtime" + rtime);
			System.out.println("mcode" + mcode);
			System.out.println("dcode" + dcode);

			ReservationVO reservation = new ReservationVO();
			reservation.setRnum(rnum);
			reservation.setRdate(rdate);
			reservation.setRtime(rtime);
			reservation.setMcode(mcode);
			reservation.setDcode(dcode);

			System.out.println("11됐냐?");

			service.regist(reservation);
			System.out.println("대따?");
		} catch (Exception e) {
			e.printStackTrace();
			// exception 처리.....
			System.out.println("안댐");
		}
		return url;
	}

}
