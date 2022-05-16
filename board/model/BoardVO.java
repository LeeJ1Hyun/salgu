package com.salgumarket.board.model;

import java.sql.Timestamp;

public class BoardVO {

	private int bNo;
	private int sellerNo;
	private int price;
	private String cCode;
	private String bTitle;
	private String detail;
	private Timestamp regdate;

	// 파일
	private String fileName;
	private long fileSize;
	private String originalFilename;
	private int readcount;

	public BoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardVO(int bNo, int sellerNo, int price, String cCode, String bTitle, String detail, Timestamp regdate,
			String fileName, long fileSize, String originalFilename, int readcount) {
		super();
		this.bNo = bNo;
		this.sellerNo = sellerNo;
		this.price = price;
		this.cCode = cCode;
		this.bTitle = bTitle;
		this.detail = detail;
		this.regdate = regdate;
		this.fileName = fileName;
		this.fileSize = fileSize;
		this.originalFilename = originalFilename;
		this.readcount = readcount;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public int getSellerNo() {
		return sellerNo;
	}

	public void setSellerNo(int sellerNo) {
		this.sellerNo = sellerNo;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getcCode() {
		return cCode;
	}

	public void setcCode(String cCode) {
		this.cCode = cCode;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}

	public String getOriginalFilename() {
		return originalFilename;
	}

	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	@Override
	public String toString() {
		return "BoardVO [bNo=" + bNo + ", sellerNo=" + sellerNo + ", price=" + price + ", cCode=" + cCode + ", bTitle="
				+ bTitle + ", detail=" + detail + ", regdate=" + regdate + ", fileName=" + fileName + ", fileSize="
				+ fileSize + ", originalFilename=" + originalFilename + ", readcount=" + readcount + "]";
	}

}
