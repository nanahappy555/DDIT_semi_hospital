package com.jsp.action.chart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.service.ChartService;

public class ChartRegistFormAction implements Action{
	private ChartService service;
	public void setChartService(ChartService service) {
		this.service = service;
		
		
	}
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
	String url="/chart/regist";
	return url;
	
	
	}
}
