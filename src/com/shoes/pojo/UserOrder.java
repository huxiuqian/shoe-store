package com.shoes.pojo;

import java.sql.Date;

public class UserOrder {
	private int oid;
	private int uid;
	private String uname;
	private int orecid;
	private Date ordertime;
	private String onum;
	private int ostate;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public int getOrecid() {
		return orecid;
	}
	public void setOrecid(int orecid) {
		this.orecid = orecid;
	}
	public Date getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
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
		return "UserOrder [oid=" + oid + ", uid=" + uid + ", uname=" + uname + ", orecid=" + orecid + ", ordertime="
				+ ordertime + ", onum=" + onum + ", ostate=" + ostate + "]";
	}
}
