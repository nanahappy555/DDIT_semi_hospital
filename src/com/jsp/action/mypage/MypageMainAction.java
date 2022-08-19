package com.jsp.action.mypage;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.command.Criteria;
import com.jsp.service.MypageService;

public class MypageMainAction implements Action {
	
	private MypageService mypageService;
	public void setMypageService(MypageService mypageService) {
		this.mypageService = mypageService;
	}
	

	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/mypage/main";

		System.out.println("url:" + url);
		
		return url;
	}

}
