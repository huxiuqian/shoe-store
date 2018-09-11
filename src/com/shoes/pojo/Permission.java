package com.shoes.pojo;

public class Permission {
	private int perid;
	private String pername;
	private String percont;
	private String peremarks;
	public int getPerid() {
		return perid;
	}
	public void setPerid(int perid) {
		this.perid = perid;
	}
	public String getPername() {
		return pername;
	}
	public void setPername(String pername) {
		this.pername = pername;
	}
	public String getPercont() {
		return percont;
	}
	public void setPercont(String percont) {
		this.percont = percont;
	}
	public String getPeremarks() {
		return peremarks;
	}
	public void setPeremarks(String peremarks) {
		this.peremarks = peremarks;
	}
	@Override
	public String toString() {
		return "Permission [perid=" + perid + ", pername=" + pername + ", percont=" + percont + ", peremarks="
				+ peremarks + "]";
	}
}
