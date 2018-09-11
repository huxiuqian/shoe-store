package com.shoes.pojo;

public class ShoesQuestionAnswer {
	private int sid;
	private String sname;
	private int sqid;
	private String sqquestion;
	private String sqquestiontime;
	private String sqanswer;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getSqid() {
		return sqid;
	}
	public void setSqid(int sqid) {
		this.sqid = sqid;
	}
	public String getSqquestion() {
		return sqquestion;
	}
	public void setSqquestion(String sqquestion) {
		this.sqquestion = sqquestion;
	}
	public String getSqquestiontime() {
		return sqquestiontime;
	}
	public void setSqquestiontime(String sqquestiontime) {
		this.sqquestiontime = sqquestiontime;
	}
	public String getSqanswer() {
		return sqanswer;
	}
	public void setSqanswer(String sqanswer) {
		this.sqanswer = sqanswer;
	}
	@Override
	public String toString() {
		return "ShoesQuestionAnswer [sid=" + sid + ", sname=" + sname + ", sqid=" + sqid + ", sqquestion=" + sqquestion
				+ ", sqquestiontime=" + sqquestiontime + ", sqanswer=" + sqanswer + "]";
	}
}
