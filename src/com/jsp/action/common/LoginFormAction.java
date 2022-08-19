package com.jsp.action.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;

public class LoginFormAction implements Action {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/common/loginForm";
		
		
		String retUrl = request.getParameter("retUrl");
		
		System.out.println("가나다라마바"+retUrl);
		
		request.setAttribute("retUrl", retUrl);
		return url;
	}
	
	
}
