package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NewsVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.QnaVO;

public class NewsDAOImpl implements NewsDAO{
	
	
	private SqlSessionFactory sqlSessionFactory;	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<NewsVO> selectNewsList(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();
			RowBounds rowBounds = new RowBounds(offset,limit);
			List<NewsVO> newsList 
			= session.selectList("News-Mapper.selectNewsList",cri,rowBounds);
			
			return newsList;
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}
	@Override
	public int selectNewsListCount(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			
			int count = session.selectOne("News-Mapper.selectNewsListCount",cri);			
			return count;
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	
	@Override
	public NewsVO selectNewsByNewsNo(int newsno) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			NewsVO news = session.selectOne("News-Mapper.selectNewsByNewsNo",newsno);			
			return news;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	
	@Override
	public void insertNews(NewsVO news) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("News-Mapper.insertNews",news);
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	@Override
	public void updateNews(NewsVO news) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("News-Mapper.updateNews",news);
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	@Override
	public void deleteNews(int newsno) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("News-Mapper.deleteNews",newsno);	
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	
}
