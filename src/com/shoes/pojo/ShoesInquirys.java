package com.shoes.pojo;

import java.sql.Date;

public class ShoesInquirys {
	private int sqid;
	private int sq_uid;
	private int sq_sid;
	private String sqquestion;
	private String sqanswer;
	private Date sqquestiontime;
	private Date sqanswertime;
	private String sqremarks;
	public int getSqid() {
		return sqid;
	}
	public void setSqid(int sqid) {
		this.sqid = sqid;
	}
	public int getSq_uid() {
		return sq_uid;
	}
	public void setSq_uid(int sq_uid) {
		this.sq_uid = sq_uid;
	}
	public int getSq_sid() {
		return sq_sid;
	}
	public void setSq_sid(int sq_sid) {
		this.sq_sid = sq_sid;
	}
	public String getSqquestion() {
		return sqquestion;
	}
	public void setSqquestion(String sqquestion) {
		this.sqquestion = sqquestion;
	}
	public String getSqanswer() {
		return sqanswer;
	}
	public void setSqanswer(String sqanswer) {
		this.sqanswer = sqanswer;
	}
	public Date getSqquestiontime() {
		return sqquestiontime;
	}
	public void setSqquestiontime(Date sqquestiontime) {
		this.sqquestiontime = sqquestiontime;
	}
	public Date getSqanswertime() {
		return sqanswertime;
	}
	public void setSqanswertime(Date sqanswertime) {
		this.sqanswertime = sqanswertime;
	}
	public String getSqremarks() {
		return sqremarks;
	}
	public void setSqremarks(String sqremarks) {
		this.sqremarks = sqremarks;
	}
	@Override
	public String toString() {
		return "ShoesInquirys [sqid=" + sqid + ", sq_uid=" + sq_uid + ", sq_sid=" + sq_sid + ", sqquestion="
				+ sqquestion + ", sqanswer=" + sqanswer + ", sqquestiontime=" + sqquestiontime + ", sqanswertime="
				+ sqanswertime + ", sqremarks=" + sqremarks + "]";
	}
}
