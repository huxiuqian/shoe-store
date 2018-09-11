package com.shoes.pojo;

import java.util.Date;

public class Shoes {
	private int sid;
	private int stid;
	private int sbid;
	private String snum;
	private String sname;
	private float sprices;
	private int sdiscount;
	private Date spubtime;
	private String sproducer;
	private String sgender;
	private String scolor;
	private String sinfo;
	private int stimessold;
	private String simage;
	private String sdetail;
	private float sintegral;
	private int sdelete;
	private String sremarks;
	private String sandroidimg;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getStid() {
		return stid;
	}
	public void setStid(int stid) {
		this.stid = stid;
	}
	public int getSbid() {
		return sbid;
	}
	public void setSbid(int sbid) {
		this.sbid = sbid;
	}
	public String getSnum() {
		return snum;
	}
	public void setSnum(String snum) {
		this.snum = snum;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public float getSprices() {
		return sprices;
	}
	public void setSprices(float sprices) {
		this.sprices = sprices;
	}
	public int getSdiscount() {
		return sdiscount;
	}
	public void setSdiscount(int sdiscount) {
		this.sdiscount = sdiscount;
	}
	public Date getSpubtime() {
		return spubtime;
	}
	public void setSpubtime(Date spubtime) {
		this.spubtime = spubtime;
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
	public String getSinfo() {
		return sinfo;
	}
	public void setSinfo(String sinfo) {
		this.sinfo = sinfo;
	}
	public int getStimessold() {
		return stimessold;
	}
	public void setStimessold(int stimessold) {
		this.stimessold = stimessold;
	}
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
	}
	public String getSdetail() {
		return sdetail;
	}
	public void setSdetail(String sdetail) {
		this.sdetail = sdetail;
	}
	public float getSintegral() {
		return sintegral;
	}
	public void setSintegral(float sintegral) {
		this.sintegral = sintegral;
	}
	public int getSdelete() {
		return sdelete;
	}
	public void setSdelete(int sdelete) {
		this.sdelete = sdelete;
	}
	public String getSremarks() {
		return sremarks;
	}
	public void setSremarks(String sremarks) {
		this.sremarks = sremarks;
	}
	public String getSandroidimg() {
		return sandroidimg;
	}
	public void setSandroidimg(String sandroidimg) {
		this.sandroidimg = sandroidimg;
	}
	@Override
	public String toString() {
		return "Shoes [sid=" + sid + ", stid=" + stid + ", sbid=" + sbid + ", snum=" + snum + ", sname=" + sname
				+ ", sprices=" + sprices + ", sdiscount=" + sdiscount + ", sproducer=" + sproducer + ", sgender="
				+ sgender + ", scolor=" + scolor + ", sinfo=" + sinfo + ", stimessold=" + stimessold + ", simage="
				+ simage + ", sdetail=" + sdetail + ", sintegral=" + sintegral + ", sdelete=" + sdelete + ", sremarks="
				+ sremarks + ", sandroidimg=" + sandroidimg + "]";
	}
}
