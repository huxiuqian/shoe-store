package com.shoes.pojo;

public class TypeSpBrand {
	private int spsid;
	private int tid;
	private String tname;
	private int bid;
	private String bname;
	private float spsprices;
	private String spsseq;
	private String spsname;
	private String spsgender;
	private int spspartnum;
	private String spspartinfo;
	public int getSpsid() {
		return spsid;
	}
	public void setSpsid(int spsid) {
		this.spsid = spsid;
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
	public float getSpsprices() {
		return spsprices;
	}
	public void setSpsprices(float spsprices) {
		this.spsprices = spsprices;
	}
	public String getSpsseq() {
		return spsseq;
	}
	public void setSpsseq(String spsseq) {
		this.spsseq = spsseq;
	}
	public String getSpsgender() {
		return spsgender;
	}
	public void setSpsgender(String spsgender) {
		this.spsgender = spsgender;
	}
	public int getSpspartnum() {
		return spspartnum;
	}
	public void setSpspartnum(int spspartnum) {
		this.spspartnum = spspartnum;
	}
	public String getSpspartinfo() {
		return spspartinfo;
	}
	public void setSpspartinfo(String spspartinfo) {
		this.spspartinfo = spspartinfo;
	}
	public String getSpsname() {
		return spsname;
	}
	public void setSpsname(String spsname) {
		this.spsname = spsname;
	}
	@Override
	public String toString() {
		return "TypeSpBrand [spsid=" + spsid + ", tid=" + tid + ", tname=" + tname + ", bid=" + bid + ", bname=" + bname
				+ ", spsprices=" + spsprices + ", spsseq=" + spsseq + ", spsname=" + spsname + ", spsgender="
				+ spsgender + ", spspartnum=" + spspartnum + ", spspartinfo=" + spspartinfo + "]";
	}
}
