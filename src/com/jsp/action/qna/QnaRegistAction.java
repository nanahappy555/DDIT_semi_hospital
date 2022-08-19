package com.jsp.action.qna;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.command.MemberRegistCommand;
import com.jsp.command.NoticeRegistCommand;
import com.jsp.command.QnaRegistCommand;
import com.jsp.controller.HttpRequestParameterAdapter;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.QnaVO;
import com.jsp.service.MemberService;
import com.jsp.service.NoticeService;
import com.jsp.service.QnaService;

public class QnaRegistAction implements Action {
	
	private QnaService service;
	public void setQnaService(QnaService service) {
		this.service = service;
	}
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//화면
		String url="/qna/regist_success";
		
		//입력
		try {
			
			request.setCharacterEncoding("utf-8");
			
			QnaRegistCommand command =HttpRequestParameterAdapter.execute(request,
							QnaRegistCommand.class );
			QnaVO qna = command.toQnaVO();
					
			//처리
			service.regist(qna);
		
		}catch(Exception e) {
			e.printStackTrace();
			//exception 처리.....
			url="/qna/regist_fail";
		}
		return url;
	}

}




