package com.jsp.command;

import com.jsp.dto.NoticeVO;

public class NoticeRegistCommand {

	private int nno;  //아이디
	private String title; //패스워드
	private int mcode=1; //이름
	private String content;  //이메일
	private int viewcnt=1; //전화번호
	private String dist;//주소

	
	
	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
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

	public NoticeVO toNoticeVO() {
		
		// NoticeVO setting
		NoticeVO notice = new NoticeVO();
		notice.setNno(nno);
		notice.setTitle(title);
		notice.setMcode(mcode);
		notice.setContent(content);
		notice.setViewcnt(viewcnt);
		notice.setDist(dist);
		
		return notice;
	}
	
	
}


