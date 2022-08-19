package com.jsp.action.news;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.command.MemberRegistCommand;
import com.jsp.command.NewsRegistCommand;
import com.jsp.command.NoticeRegistCommand;
import com.jsp.command.QnaRegistCommand;
import com.jsp.controller.HttpRequestParameterAdapter;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NewsVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.QnaVO;
import com.jsp.service.MemberService;
import com.jsp.service.NewsService;
import com.jsp.service.NoticeService;
import com.jsp.service.QnaService;

public class NewsRegistAction implements Action {
	
	private NewsService service;
	public void setNewsService(NewsService service) {
		this.service = service;
	}
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//화면
		String url="/news/regist_success";
		
		//입력
		try {
			
			request.setCharacterEncoding("utf-8");
			
			NewsRegistCommand command =HttpRequestParameterAdapter.execute(request,
									NewsRegistCommand.class );
			NewsVO news = command.toNewsVO();
					
			//처리
			service.regist(news);
		
		}catch(Exception e) {
			e.printStackTrace();
			//exception 처리.....
			url="/news/regist_fail";
		}
		return url;
	}

}




