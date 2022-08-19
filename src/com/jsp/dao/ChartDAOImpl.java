package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.command.Criteria;
import com.jsp.dto.ChartVO;

public class ChartDAOImpl implements ChartDAO{
	
	
	private SqlSessionFactory sqlSessionFactory;	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<ChartVO> selectChartList(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();
			RowBounds rowBounds = new RowBounds(offset,limit);
			
			List<ChartVO> chartList 
			= session.selectList("Chart-Mapper.selectChartList",cri,rowBounds);
			
			return chartList;
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}
	@Override
	public int selectChartListCount(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			
			int count = session.selectOne("Chart-Mapper.selectChartListCount",cri);			
			return count;
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	
	@Override
	public ChartVO selectChartById(String cnum) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			ChartVO chart=session.selectOne("Chart-Mapper.selectChartById",cnum);			
			return chart;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	
	@Override
	public void insertChart(ChartVO chart) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Chart-Mapper.insertChart",chart);
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	@Override
	public void updateChart(ChartVO chart) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Chart-Mapper.updateChart",chart);
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	@Override
	public void deleteChart(String cnum) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Chart-Mapper.deleteHChart",cnum);	
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	
}
