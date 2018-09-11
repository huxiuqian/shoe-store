package com.shoes.pojo;

public class ShoesUserComment {
	private int sid;
	private String sname;
	private int uid;
	private String uaccount;
	private int cid;
	private String sccomments;
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
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUaccount() {
		return uaccount;
	}
	public void setUaccount(String uaccount) {
		this.uaccount = uaccount;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getSccomments() {
		return sccomments;
	}
	public void setSccomments(String sccomments) {
		this.sccomments = sccomments;
	}
	@Override
	public String toString() {
		return "ShoesUserComment [sid=" + sid + ", sname=" + sname + ", uid=" + uid + ", uaccount=" + uaccount
				+ ", cid=" + cid + ", sccomments=" + sccomments + "]";
	}
}
