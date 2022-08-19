package com.jsp.action.notice;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.action.Action;
import com.jsp.command.MemberRegistCommand;
import com.jsp.command.NoticeRegistCommand;
import com.jsp.controller.HttpRequestParameterAdapter;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;
import com.jsp.service.MemberService;
import com.jsp.service.NoticeService;

public class NoticeRegistAction implements Action {
	
	private NoticeService service;
	public void setNoticeService(NoticeService service) {
		this.service = service;
	}
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//화면
		String url="/notice/regist_success";
		
		//입력
		try {
			
			request.setCharacterEncoding("utf-8");
			
			NoticeRegistCommand command =HttpRequestParameterAdapter.execute(request,
							NoticeRegistCommand.class );
			NoticeVO notice = command.toNoticeVO();
					
			//처리
			service.regist(notice);
		
		}catch(Exception e) {
			e.printStackTrace();
			//exception 처리.....
			url="/notice/regist_fail";
		}
		
		
		
		return url;
	}

}




