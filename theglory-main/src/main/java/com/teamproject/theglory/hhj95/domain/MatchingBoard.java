package com.teamproject.theglory.hhj95.domain;

import java.sql.Timestamp;

public class MatchingBoard {
	
	private int no;
	private String title;
	private String writer;
	private Timestamp writeDate;
	private int readCount;
	private String content;
	private String pass;
	private String local;
	private String bloodtype;
	private String bloodDonation;
	private int recommend;
	private int thank;
	
	public MatchingBoard() {}

	public MatchingBoard(int no, String title, String writer, Timestamp writeDate, int readCount, String content,
			String pass, String local, String bloodtype, String bloodDonation) {
		super();
		this.no = no;
		this.title = title;
		this.writer = writer;
		this.writeDate = writeDate;
		this.readCount = readCount;
		this.content = content;
		this.pass = pass;
		this.local = local;
		this.bloodtype = bloodtype;
		this.bloodDonation = bloodDonation;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Timestamp getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Timestamp writeDate) {
		this.writeDate = writeDate;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public String getBloodtype() {
		return bloodtype;
	}

	public void setBloodtype(String bloodtype) {
		this.bloodtype = bloodtype;
	}

	public String getBloodDonation() {
		return bloodDonation;
	}

	public void setBloodDonation(String bloodDonation) {
		this.bloodDonation = bloodDonation;
	}

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	public int getThank() {
		return thank;
	}

	public void setThank(int thank) {
		this.thank = thank;
	}
	
}
