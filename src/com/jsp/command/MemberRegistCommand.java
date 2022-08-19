package com.jsp.command;

import com.jsp.dto.MemberVO;

public class MemberRegistCommand {

	private String id;  //아이디
	private String pwd; //패스워드
	private String name="---"; //이름
	private int gender; //성별
	private String email;  //이메일
	private String[] phone; //전화번호
	private String addr1;//주소
	private String addr2;//주소

	
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
	public String[] getPhone() {
		return phone;
	}
	public void setPhone(String[] phone) {
		this.phone = phone;
	}



	public String getAddr1() {
		return addr1;
	}
	public void setAdd1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public MemberVO toMemberVO() {
		
		String phone = "";
		
		for (String data : this.phone) {
			phone += data;
		}
		
		// MemberVO setting
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPwd(pwd);
		member.setName(name);
		member.setGender(gender);
		member.setEmail(email);
		member.setPhone(phone);
		member.setAddr1(addr1);
		member.setAddr2(addr2);
		
		return member;
	}
	
	
}








