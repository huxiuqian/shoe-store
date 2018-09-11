package com.shoes.pojo;

public class Type {
	private int tid;
	private String tname;
	private String tremarks;
	private int tdelete;
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
	public String getTremarks() {
		return tremarks;
	}
	public void setTremarks(String tremarks) {
		this.tremarks = tremarks;
	}
	public int getTdelete() {
		return tdelete;
	}
	public void setTdelete(int tdelete) {
		this.tdelete = tdelete;
	}
	@Override
	public String toString() {
		return "Type [tid=" + tid + ", tname=" + tname + ", tremarks=" + tremarks + ", tdelete=" + tdelete + "]";
	}
}
