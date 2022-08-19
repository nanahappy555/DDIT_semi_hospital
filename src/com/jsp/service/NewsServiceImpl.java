package com.jsp.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jsp.command.Criteria;
import com.jsp.command.PageMaker;
import com.jsp.dao.NewsDAO;
import com.jsp.dao.NoticeDAO;
import com.jsp.dao.QnaDAO;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NewsVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.QnaVO;

public class NewsServiceImpl implements NewsService {

	private NewsDAO newsDAO;
	public void setNewsDAO(NewsDAO newsDAO) {
		this.newsDAO = newsDAO;
	}
	
	@Override
	public Map<String,Object> getNewsList(Criteria cri) throws SQLException {
		
		Map<String,Object> dataMap =null;
		
		//처리.......
		List<NewsVO> newsList = newsDAO.selectNewsList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(newsDAO.selectNewsListCount(cri));
		
		dataMap = new HashMap<String,Object>();
		dataMap.put("newsList", newsList);
		dataMap.put("pageMaker",pageMaker);
		
		return dataMap;
	}

	@Override
	public NewsVO getNews(int newsno) throws SQLException {
		NewsVO news = newsDAO.selectNewsByNewsNo(newsno);
		return news;
	}
	
	@Override
	public void regist(NewsVO news) throws Exception {
		newsDAO.insertNews(news);
		
	}

	@Override
	public void modify(NewsVO news) throws Exception {
		newsDAO.updateNews(news);		
	}

	@Override
	public void remove(int newsno) throws Exception {
		newsDAO.deleteNews(newsno);		
	}

}
