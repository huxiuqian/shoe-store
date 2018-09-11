package com.shoes.pojo;

public class Admin {
	private int aid;
	private String acount;
	private String apwd;
	private int a_pcid;
	private String aremarks;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAcount() {
		return acount;
	}
	public void setAcount(String acount) {
		this.acount = acount;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	public int getA_pcid() {
		return a_pcid;
	}
	public void setA_pcid(int a_pcid) {
		this.a_pcid = a_pcid;
	}
	public String getAremarks() {
		return aremarks;
	}
	public void setAremarks(String aremarks) {
		this.aremarks = aremarks;
	}
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", acount=" + acount + ", apwd=" + apwd + ", a_pcid=" + a_pcid + ", aremarks="
				+ aremarks + "]";
	}
}
