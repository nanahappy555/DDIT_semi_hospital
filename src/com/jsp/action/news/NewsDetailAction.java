package com.jsp.action.news;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NewsVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.QnaVO;
import com.jsp.service.MemberService;
import com.jsp.service.NewsService;
import com.jsp.service.NoticeService;
import com.jsp.service.QnaService;

public class NewsDetailAction implements Action {

	private NewsService newsService;
	public void setSearchNewsService(NewsService newsService) {
		this.newsService = newsService;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/news/detail";

		String newsParam = request.getParameter("newsno");
		System.out.println(newsParam);
		int newsno = Integer.parseInt(newsParam);

		try {
			NewsVO news = newsService.getNews(newsno);
			
			request.setAttribute("news", news);
			
		}catch(Exception e) {
			e.printStackTrace();
			// ........
			url = "/news/detail_fail";
			//response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		}

		return url;
	}

}
