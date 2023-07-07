package com.teamproject.theglory.kgh.domain;

import java.sql.Timestamp;

public class Member {	
	
	private String name, id, pass, email, phone, birth, bloodtype, gender, address;
	private boolean  emailGet;
	private Timestamp regDate;
	
	public Member() { }
	
	public Member(String name, String id, String pass, String email, String phone, String birth, String bloodtype,
			String gender, String address, boolean emailGet, Timestamp regDate) {
		super();
		this.name = name;
		this.id = id;
		this.pass = pass;
		this.email = email;
		this.phone = phone;
		this.birth = birth;
		this.bloodtype = bloodtype;
		this.gender = gender;
		this.address = address;
		this.emailGet = emailGet;
		this.regDate = regDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
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

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getBloodtype() {
		return bloodtype;
	}

	public void setBloodtype(String bloodtype) {
		this.bloodtype = bloodtype;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public boolean isEmailGet() {
		return emailGet;
	}

	public void setEmailGet(boolean emailGet) {
		this.emailGet = emailGet;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}	
	
}
