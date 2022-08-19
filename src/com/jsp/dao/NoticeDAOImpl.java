package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;

public class NoticeDAOImpl implements NoticeDAO{
	
	
	private SqlSessionFactory sqlSessionFactory;	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<NoticeVO> selectNoticeList(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();
			RowBounds rowBounds = new RowBounds(offset,limit);
			List<NoticeVO> noticeList 
			= session.selectList("Notice-Mapper.selectNoticeList",cri,rowBounds);
			
			return noticeList;
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}
	@Override
	public int selectNoticeListCount(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			
			int count = session.selectOne("Notice-Mapper.selectNoticeListCount",cri);			
			return count;
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	
	@Override
	public NoticeVO selectNoticeByNNo(int nNo) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			NoticeVO notice = session.selectOne("Notice-Mapper.selectNoticeByNNo",nNo);			
			return notice;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	
	@Override
	public void insertNotice(NoticeVO notice) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Notice-Mapper.insertNotice",notice);
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	@Override
	public void updateNotice(NoticeVO notice) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Notice-Mapper.updateNotice",notice);
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	@Override
	public void deleteNotice(int nNo) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Notice-Mapper.deleteNotice",nNo);	
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	
}
