package com.jsp.dto;


public class ReservationVO {
	
	private String rnum; //예약넘버
	private String rdate;  //예약날짜
	private String rtime;  //예약 시간
	private int mcode;  //회원코드
	private int dcode;  //의사코드
	
	public ReservationVO() {}
	
	public ReservationVO(String rnum) {
		this.rnum = rnum;
	}
	
	public String getRnum() {
		return rnum;
	}
	public void setRnum(String rnum) {
		this.rnum = rnum;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRtime() {
		return rtime;
	}
	public void setRtime(String rtime) {
		this.rtime = rtime;
	}
	public int getMcode() {
		return mcode;
	}
	public void setMcode(int mcode) {
		this.mcode = mcode;
	}
	public int getDcode() {
		return dcode;
	}
	public void setDcode(int dcode) {
		this.dcode = dcode;
	}
	
	
	
	
	
	

	
}
