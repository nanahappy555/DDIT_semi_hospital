package com.jsp.dao;

import java.sql.SQLException;

import com.jsp.dto.MypageVO;

public interface MypageDAO {
	
	
	MypageVO selectMypageMainNum(int mcode, int gender, int birth) throws SQLException;

	MypageVO selectMypageMainVar(String id, String pwd, String name, String email, String phone, String addr1,
			String addr2) throws SQLException;

}	
