package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;

public interface NoticeDAO {
	
	List<NoticeVO> selectNoticeList(Criteria cri)throws SQLException;
	int selectNoticeListCount(Criteria cri)throws SQLException;
	
	NoticeVO selectNoticeByNNo(int nno)throws SQLException;
	
	
	// 회원 추가
	public void insertNotice(NoticeVO notice) throws SQLException;
	
	// 회원 수정
	public void updateNotice(NoticeVO notice) throws SQLException;
	
	// 회원정보 삭제
	void deleteNotice(int nNo) throws SQLException;

}	
