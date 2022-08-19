package com.jsp.dto;

public class MypageVO {
	
	private int mcode;  //진료번호
	private String id; //진료과
	private String pwd; //진료과
	private String name; //진료과
	private int gender; //진료과
	private int birth; //진료과
	private String email; //진료과
	private String phone; //진료과
	private String addr1; //진료과
	private String addr2; //진료과
	
	public MypageVO() {}

	public MypageVO(int mcode, String id, String pwd, String name, int gender, int birth, String email, String phone,
			String addr1, String addr2) {
		super();
		this.mcode = mcode;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.email = email;
		this.phone = phone;
		this.addr1 = addr1;
		this.addr2 = addr2;
	}

	public int getMcode() {
		return mcode;
	}

	public void setMcode(int mcode) {
		this.mcode = mcode;
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

	public int getBirth() {
		return birth;
	}

	public void setBirth(int birth) {
		this.birth = birth;
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

	@Override
	public String toString() {
		return "MypageVO [mcode=" + mcode + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", gender=" + gender
				+ ", birth=" + birth + ", email=" + email + ", phone=" + phone + ", addr1=" + addr1 + ", addr2=" + addr2
				+ "]";
	}
	
}
