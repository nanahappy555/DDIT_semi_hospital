package com.jsp.dto;

import java.util.Date;

public class QnaVO {
	
	private int qno;  //글번호
	private String title ; //제목
	private int mcode; //작성자
	private String content; //내용
	private Date regdate; //등록일
	private int viewcnt ; //조회수
	private Date updatedate; //수정일
	private String dist;
	
//	private MemberVO memberVO; //join vo
	
	public QnaVO() {}
	
	public QnaVO(int qno) {
		this.qno = qno;
	}
	
	
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

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	public Date getUpdatedate() {
		return updatedate;
	}

	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}

	public String getDist() {
		return dist;
	}

	public void setDist(String dist) {
		this.dist = dist;
	}

	
	
//	public MemberVO getMemberVO() {
//		return memberVO;
//	}
//
//	public void setMemberVO(MemberVO memberVO) {
//		this.memberVO = memberVO;
//	}


	@Override	
	public String toString() {
		return this.qno + this.title + this.mcode;
	}
}
