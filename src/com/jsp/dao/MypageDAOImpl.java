package com.jsp.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.dto.MypageVO;

public class MypageDAOImpl implements MypageDAO{
	
	
	private SqlSessionFactory sqlSessionFactory;	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}


	
	@Override
	public MypageVO selectMypageMainNum(int mcode, int gender, int birth) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			MypageVO mypage=session.selectOne("Mypage-Mapper.selectMypageMainNum", mcode);			
							session.selectOne("Mypage-Mapper.selectMypageMainNum", gender);			
							session.selectOne("Mypage-Mapper.selectMypageMainNum", birth);			
			return mypage;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	@Override
	public MypageVO selectMypageMainVar(String id, String pwd, String name, String email, String phone, String addr1, String addr2) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			MypageVO mypage=session.selectOne("Mypage-Mapper.selectMypageMainVar", id);			
							session.selectOne("Mypage-Mapper.selectMypageMainVar", pwd);			
							session.selectOne("Mypage-Mapper.selectMypageMainVar", name);			
							session.selectOne("Mypage-Mapper.selectMypageMainVar", email);			
							session.selectOne("Mypage-Mapper.selectMypageMainVar", phone);			
							session.selectOne("Mypage-Mapper.selectMypageMainVar", addr1);			
							session.selectOne("Mypage-Mapper.selectMypageMainVar", addr2);			
			return mypage;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	
	

	
}
