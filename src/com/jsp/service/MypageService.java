package com.jsp.service;

import java.sql.SQLException;

import com.jsp.dto.MypageVO;

public interface MypageService {
	
	//마이페이지 넘버 데이터
	MypageVO getMypage(int mcode, int gender, int birth) throws SQLException;

	MypageVO getMypage(String id, String pwd, String name, String email, String phone, String addr1, String addr2)
			throws SQLException; 

}
