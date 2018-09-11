package com.shoes.pojo;

import java.sql.Date;

public class Comment {
	private int cid;
	private int c_uid;
	private int c_sid;
	private String sccomments;
	private int scscore;
	private Date sctime;
	private int scoid;
	private String scremarks;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getC_uid() {
		return c_uid;
	}
	public void setC_uid(int c_uid) {
		this.c_uid = c_uid;
	}
	public int getC_sid() {
		return c_sid;
	}
	public void setC_sid(int c_sid) {
		this.c_sid = c_sid;
	}
	public String getSccomments() {
		return sccomments;
	}
	public void setSccomments(String sccomments) {
		this.sccomments = sccomments;
	}
	public int getScscore() {
		return scscore;
	}
	public void setScscore(int scscore) {
		this.scscore = scscore;
	}
	public Date getSctime() {
		return sctime;
	}
	public void setSctime(Date sctime) {
		this.sctime = sctime;
	}
	public int getScoid() {
		return scoid;
	}
	public void setScoid(int scoid) {
		this.scoid = scoid;
	}
	public String getScremarks() {
		return scremarks;
	}
	public void setScremarks(String scremarks) {
		this.scremarks = scremarks;
	}
	@Override
	public String toString() {
		return "Comment [cid=" + cid + ", c_uid=" + c_uid + ", c_sid=" + c_sid + ", sccomments=" + sccomments
				+ ", scscore=" + scscore + ", sctime=" + sctime + ", scoid=" + scoid + ", scremarks=" + scremarks + "]";
	}
}
