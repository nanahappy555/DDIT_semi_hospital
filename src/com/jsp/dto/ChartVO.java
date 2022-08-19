package com.jsp.dto;

public class ChartVO {
	
	private int cnum;  //진료번호
	private String cdate; //진료날짜
	private String ctime; //진료시간
	private String mcode; // 진료환자
	private String dcode; // 진료환자
	
	public ChartVO() {}

	public ChartVO(int cnum, String cdate, String ctime, String mcode, String dcode) {
		super();
		this.cnum = cnum;
		this.cdate = cdate;
		this.ctime = ctime;
		this.mcode = mcode;
		this.dcode = dcode;
	}

	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}

	public String getCdate() {
		return cdate;
	}

	public void setCdate(String cdate) {
		this.cdate = cdate;
	}

	public String getCtime() {
		return ctime;
	}

	public void setCtime(String ctime) {
		this.ctime = ctime;
	}

	public String getMcode() {
		return mcode;
	}

	public void setMcode(String mcode) {
		this.mcode = mcode;
	}

	public String getDcode() {
		return dcode;
	}

	public void setDcode(String dcode) {
		this.dcode = dcode;
	}

	@Override
	public String toString() {
		return "ChartVO [cnum=" + cnum + ", cdate=" + cdate + ", ctime=" + ctime + ", mcode=" + mcode + ", dcode="
				+ dcode + "]";
	}
	
}
