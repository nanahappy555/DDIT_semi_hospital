package com.jsp.action.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.service.ReservationService;

public class ReservationListAction implements Action {
   
   private ReservationService service;
   public void setReservationService(ReservationService service) {
      this.service = service;
   }
   

   
   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
      String url = "/reservation/list";


      return url;
   }

}