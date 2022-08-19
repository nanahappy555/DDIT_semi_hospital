package com.jsp.dto;

import java.util.Date;

public class MemberVO {
	
	private int mcode;  //환자번호
	private String id;  //아이디
	private String pwd; //패스워드
	private String name="---"; //이름
	private int gender; //성별
	private int birth; //생일
	private String email;  //이메일
	private String phone; //전화번호
	private String addr1;//주소
	private String addr2;//주소
	
	private int authority=1; // 권한
	
	public MemberVO() {}
	public MemberVO(String id, String pwd) {
		this.id = id;
		this.pwd = pwd;
	}
	public int getMcode() {
		return mcode;
	}
	public void setMcode(int mCode) {
		this.mcode = mCode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
	}

	
}
