package com.jsp.service;

import java.sql.SQLException;
import java.util.Map;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.QnaVO;

public interface QnaService {
	
	//게시글목록조회
	Map<String,Object> getQnaList(Criteria cri)throws SQLException;
	
	//게시글상세조회
	QnaVO getQna(int qno)throws SQLException;	

	//게시글 등록
	public void regist(QnaVO qna) throws Exception;
	
	//게시글 수정
	public void modify(QnaVO qna)throws Exception;
	
	//게시글 삭제
	public void remove(int qno)throws Exception; 
}
