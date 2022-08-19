package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import com.jsp.command.Criteria;
import com.jsp.dto.ChartVO;

public interface ChartDAO {
	
	List<ChartVO> selectChartList(Criteria cri)throws SQLException;
	int selectChartListCount(Criteria cri)throws SQLException;
	
	ChartVO selectChartById(String cnum)throws SQLException;
	
	
	// 진료내역 추가
	public void insertChart(ChartVO chart) throws SQLException;
	
	// 진료내역 수정
	public void updateChart(ChartVO chart) throws SQLException;
	
	// 진료내역 삭제
	void deleteChart(String cnum) throws SQLException;

}	
