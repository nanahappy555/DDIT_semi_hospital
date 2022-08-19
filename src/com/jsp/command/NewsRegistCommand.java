package com.jsp.command;

import com.jsp.dto.NewsVO;

public class NewsRegistCommand {

	private int newsno;  //글번호
	private String title; //제목
	private int mcode=1; //회원코드
	private String content;  //내용
	private int viewcnt=1; //조회수
	private String dist;//

	
	
	public int getNewsno() {
		return newsno;
	}

	public void setNewsno(int newsno) {
		this.newsno = newsno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getMcode() {
		return mcode;
	}

	public void setMcode(int mcode) {
		this.mcode = mcode;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	public String getDist() {
		return dist;
	}

	public void setDist(String dist) {
		this.dist = dist;
	}

	public NewsVO toNewsVO() {
		
		// QnaVO setting
		NewsVO news = new NewsVO();
		news.setNewsno(newsno);
		news.setTitle(title);
		news.setMcode(mcode);
		news.setContent(content);
		news.setViewcnt(viewcnt);
		news.setDist(dist);
		
		return news;
	}
	
	
}


