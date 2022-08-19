package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NewsVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.QnaVO;

public interface NewsDAO {
	
	List<NewsVO> selectNewsList(Criteria cri)throws SQLException;
	int selectNewsListCount(Criteria cri)throws SQLException;
	
	NewsVO selectNewsByNewsNo(int newsno)throws SQLException;
	
	
	// 회원 추가
	public void insertNews(NewsVO newsno) throws SQLException;
	
	// 회원 수정
	public void updateNews(NewsVO newsno) throws SQLException;
	
	// 회원정보 삭제
	void deleteNews(int newsno) throws SQLException;

}	
