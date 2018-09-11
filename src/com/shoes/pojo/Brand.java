package com.shoes.pojo;

public class Brand {
	private int bid;
	private String bname;
	private String bsex;
	private int state;
	private String bremarks;
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
	public String getBsex() {
		return bsex;
	}
	public void setBsex(String bsex) {
		this.bsex = bsex;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getBremarks() {
		return bremarks;
	}
	public void setBremarks(String bremarks) {
		this.bremarks = bremarks;
	}
	@Override
	public String toString() {
		return "Brand [bid=" + bid + ", bname=" + bname + ", bsex=" + bsex + ", state=" + state + ", bremarks="
				+ bremarks + "]";
	}
}
