package com.jsp.command;

import com.jsp.dto.QnaVO;

public class QnaRegistCommand {

	private int qno;  //글번호
	private String title; //제목
	private int mcode=1; //회원코드
	private String content;  //내용
	private int viewcnt=1; //조회수
	private String dist;//

	
	
	public int getQno() {
		return qno;
	}

	public void setQno(int qno) {
		this.qno = qno;
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

	public QnaVO toQnaVO() {
		
		// QnaVO setting
		QnaVO qna = new QnaVO();
		qna.setQno(qno);
		qna.setTitle(title);
		qna.setMcode(mcode);
		qna.setContent(content);
		qna.setViewcnt(viewcnt);
		qna.setDist(dist);
		
		return qna;
	}
	
	
}


