package com.teamproject.theglory.hhj95.domain;

import java.sql.Timestamp;

public class MatchingReply {
	
	private int no;
	private int matchNo;
	private String replyContent;
	private String replyWriter;
	private Timestamp regDate;
	
	public MatchingReply() {}

	public MatchingReply(int matchNo, String replyContent, String replyWriter) {
		this.matchNo = matchNo;
		this.replyContent = replyContent;
		this.replyWriter = replyWriter;
	}

	public MatchingReply(int no, int matchNo, String replyContent, String replyWriter, Timestamp regDate) {
		super();
		this.no = no;
		this.matchNo = matchNo;
		this.replyContent = replyContent;
		this.replyWriter = replyWriter;
		this.regDate = regDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getMatchNo() {
		return matchNo;
	}

	public void setMatchNo(int matchNo) {
		this.matchNo = matchNo;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getReplyWriter() {
		return replyWriter;
	}

	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
}
