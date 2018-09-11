package com.shoes.pojo;

public class SpcifyShoeOrderResult {
	private int sprid;
	private String sprscheme;
	private int sprnum;
	private int spsid;
	private String spsname;
	private int oid;
	private String onum;
	private int ostate;
	public int getSprid() {
		return sprid;
	}
	public void setSprid(int sprid) {
		this.sprid = sprid;
	}
	public String getSprscheme() {
		return sprscheme;
	}
	public void setSprscheme(String sprscheme) {
		this.sprscheme = sprscheme;
	}
	public int getSprnum() {
		return sprnum;
	}
	public void setSprnum(int sprnum) {
		this.sprnum = sprnum;
	}
	public int getSpsid() {
		return spsid;
	}
	public void setSpsid(int spsid) {
		this.spsid = spsid;
	}
	public String getSpsname() {
		return spsname;
	}
	public void setSpsname(String spsname) {
		this.spsname = spsname;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOnum() {
		return onum;
	}
	public void setOnum(String onum) {
		this.onum = onum;
	}
	public int getOstate() {
		return ostate;
	}
	public void setOstate(int ostate) {
		this.ostate = ostate;
	}
	@Override
	public String toString() {
		return "SpcifyShoeOrderResult [sprid=" + sprid + ", sprscheme=" + sprscheme + ", sprnum=" + sprnum + ", spsid="
				+ spsid + ", spsname=" + spsname + ", oid=" + oid + ", onum=" + onum + ", ostate=" + ostate + "]";
	}
}
