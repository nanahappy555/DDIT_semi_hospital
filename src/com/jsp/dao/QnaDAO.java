package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.QnaVO;

public interface QnaDAO {
	
	List<QnaVO> selectQnaList(Criteria cri)throws SQLException;
	int selectQnaListCount(Criteria cri)throws SQLException;
	
	QnaVO selectQnaByQNo(int qno)throws SQLException;
	
	
	// 회원 추가
	public void insertQna(QnaVO qna) throws SQLException;
	
	// 회원 수정
	public void updateQna(QnaVO qna) throws SQLException;
	
	// 회원정보 삭제
	void deleteQna(int qno) throws SQLException;

}	
