package com.shoes.pojo;

public class ShoeTypeBrand {
	private int sid;
	private String sname;
	private int tid;
	private String tname;
	private int bid;
	private String bname;
	private float sprices;
	private String sproducer;
	private String sgender;
	private String scolor;
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
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public float getSprices() {
		return sprices;
	}
	public void setSprices(float sprices) {
		this.sprices = sprices;
	}
	public String getSproducer() {
		return sproducer;
	}
	public void setSproducer(String sproducer) {
		this.sproducer = sproducer;
	}
	public String getSgender() {
		return sgender;
	}
	public void setSgender(String sgender) {
		this.sgender = sgender;
	}
	public String getScolor() {
		return scolor;
	}
	public void setScolor(String scolor) {
		this.scolor = scolor;
	}
	@Override
	public String toString() {
		return "ShoeTypeBrand [sid=" + sid + ", sname=" + sname + ", tid=" + tid + ", tname=" + tname + ", bid=" + bid
				+ ", bname=" + bname + ", sprices=" + sprices + ", sproducer=" + sproducer + ", sgender=" + sgender
				+ ", scolor=" + scolor + "]";
	}
}
