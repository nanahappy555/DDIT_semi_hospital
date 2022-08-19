package com.jsp.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.dto.ReservationVO;

public class ReservationDAOImpl implements ReservationDAO{
	
	
	private SqlSessionFactory sqlSessionFactory;	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	
	@Override
	public ReservationVO selectReservationByRnum(String rnum) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			ReservationVO reservation = session.selectOne("Reservation-Mapper.selectReservationByRnum",rnum);			
			return reservation;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	
	@Override
	public void insertReservation(ReservationVO reservation) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Reservation-Mapper.insertReservation",reservation);
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
		
	}


	@Override
	public void deleteReservation(String rnum) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {			  
			session.update("Reservation-Mapper.deleteReservation",rnum);	
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	
}
