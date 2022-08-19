package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO{
	
	
	private SqlSessionFactory sqlSessionFactory;	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<MemberVO> selectMemberList(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();
			RowBounds rowBounds = new RowBounds(offset,limit);
			
			List<MemberVO> memberList 
			= session.selectList("Member-Mapper.selectMemberList",cri,rowBounds);
			MemberVO mem = memberList.get(0);
			System.out.println(mem.getMcode());
			
			return memberList;
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}
	@Override
	public int selectMemberListCount(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			
			int count = session.selectOne("Member-Mapper.selectMemberListCount",cri);			
			return count;
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	
	@Override
	public MemberVO selectMemberById(String id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			MemberVO member=session.selectOne("Member-Mapper.selectMemberById",id);	
			return member;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	@Override
	public String selectMemberByMcode(int mcode) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			String name=session.selectOne("Member-Mapper.selectMemberByMcode",mcode);	
			return name;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}
	
	@Override
	public void insertMember(MemberVO member) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Member-Mapper.insertMember",member);
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	@Override
	public void updateMember(MemberVO member) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Member-Mapper.updateMember",member);
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}

	@Override
	public void deleteMember(String id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Member-Mapper.deleteMember",id);	
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}


	
}
