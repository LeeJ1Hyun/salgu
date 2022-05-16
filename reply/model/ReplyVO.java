package com.salgumarket.reply.model;

import java.sql.Timestamp;

public class ReplyVO {

	private int rNo;
	private int mNo;
	private int pNo;
	private String rContent;
	private Timestamp regdate;
	
	public ReplyVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ReplyVO(int rNo, int mNo, int pNo, String rContent, Timestamp regdate) {
		super();
		this.rNo = rNo;
		this.mNo = mNo;
		this.pNo = pNo;
		this.rContent = rContent;
		this.regdate = regdate;
	}
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "ReplyVO [rNo=" + rNo + ", mNo=" + mNo + ", pNo=" + pNo + ", rContent=" + rContent + ", regdate="
				+ regdate + "]";
	}

	
	

}
