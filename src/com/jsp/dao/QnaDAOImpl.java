package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.QnaVO;

public class QnaDAOImpl implements QnaDAO{
	
	
	private SqlSessionFactory sqlSessionFactory;	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<QnaVO> selectQnaList(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();
			RowBounds rowBounds = new RowBounds(offset,limit);
			List<QnaVO> qnaList 
			= session.selectList("Qna-Mapper.selectQnaList",cri,rowBounds);
			
			return qnaList;
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}
	@Override
	public int selectQnaListCount(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			
			int count = session.selectOne("Qna-Mapper.selectQnaListCount",cri);			
			return count;
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	
	@Override
	public QnaVO selectQnaByQNo(int qno) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			QnaVO qna = session.selectOne("Qna-Mapper.selectQnaByQNo",qno);			
			return qna;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	
	@Override
	public void insertQna(QnaVO qna) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Qna-Mapper.insertQna",qna);
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	@Override
	public void updateQna(QnaVO qna) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Qna-Mapper.updateQna",qna);
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	@Override
	public void deleteQna(int qno) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Qna-Mapper.deleteQna",qno);	
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	
}
