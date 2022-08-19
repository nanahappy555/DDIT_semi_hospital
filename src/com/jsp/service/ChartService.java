package com.jsp.service;

import java.sql.SQLException;
import java.util.Map;

import com.jsp.command.Criteria;
import com.jsp.dto.ChartVO;

public interface ChartService {
	
	//회원목록조회
	Map<String,Object> getChartList(Criteria cri)throws SQLException;
	
	//회원상세조회
	ChartVO getChart(String cnum)throws SQLException;	

	//회원등록
	public void regist(ChartVO chart) throws Exception;
	
	//회원수정
	public void modify(ChartVO chart)throws Exception;
	
	//회원탈퇴
	public void remove(String cnum)throws Exception; 
}
