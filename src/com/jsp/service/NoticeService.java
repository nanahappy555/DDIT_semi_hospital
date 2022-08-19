package com.jsp.service;

import java.sql.SQLException;
import java.util.Map;

import com.jsp.command.Criteria;
import com.jsp.dto.NoticeVO;

public interface NoticeService {
	
	//게시글목록조회
	Map<String,Object> getNoticeList(Criteria cri)throws SQLException;
	
	//게시글상세조회
	NoticeVO getNotice(int nno)throws SQLException;	

	//게시글 등록
	public void regist(NoticeVO notice) throws Exception;
	
	//게시글 수정
	public void modify(NoticeVO notice)throws Exception;
	
	//게시글 삭제
	public void remove(int nNo)throws Exception; 
}
