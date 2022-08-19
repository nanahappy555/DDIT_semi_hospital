package com.jsp.service;

import java.sql.SQLException;

import com.jsp.dao.MypageDAO;
import com.jsp.dto.MypageVO;

public class MypageServiceImpl implements MypageService {

	private MypageDAO mypageDAO;
	public void setMypageDAO(MypageDAO mypageDAO) {
		this.mypageDAO = mypageDAO;
	}
	


	@Override
	public MypageVO getMypage(int mcode, int gender, int birth) throws SQLException {
		MypageVO mypage = mypageDAO.selectMypageMainNum(mcode, gender, birth);
		return mypage;
	}

	@Override
	public MypageVO getMypage(String id, String pwd, String name, String email, String phone, String addr1,
			String addr2) throws SQLException {
		MypageVO mypage = mypageDAO.selectMypageMainVar(id, pwd, name, email, phone, addr1, addr2);
		return mypage;
	}

	


}
