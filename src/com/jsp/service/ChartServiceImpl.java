package com.jsp.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jsp.command.Criteria;
import com.jsp.command.PageMaker;
import com.jsp.dao.ChartDAO;
import com.jsp.dto.ChartVO;

public class ChartServiceImpl implements ChartService {

	private ChartDAO chartDAO;
	public void setChartDAO(ChartDAO chartDAO) {
		this.chartDAO = chartDAO;
	}
	
	@Override
	public Map<String,Object> getChartList(Criteria cri) throws SQLException {
		Map<String,Object> dataMap =null;
		
		//처리.......
		List<ChartVO> chartList = chartDAO.selectChartList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(chartDAO.selectChartListCount(cri));
		
		dataMap = new HashMap<String,Object>();
		dataMap.put("chartList", chartList);
		dataMap.put("pageMaker",pageMaker);
		
		return dataMap;
	}

	@Override
	public ChartVO getChart(String cnum) throws SQLException {
		ChartVO chart = chartDAO.selectChartById(cnum);
		return chart;
	}
	
	@Override
	public void regist(ChartVO chart) throws Exception {
		chartDAO.insertChart(chart);
		
	}

	@Override
	public void modify(ChartVO chart) throws Exception {
		chartDAO.updateChart(chart);		
	}

	@Override
	public void remove(String cnum) throws Exception {
		chartDAO.deleteChart(cnum);		
	}

}
