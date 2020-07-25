package com.kh.eeum.domain;

public class Comment {
	private int num;
	private String id;
	private String content;
	private String reg_date;
	private int QNA_INDEX1;

	
	
	public int getQNA_INDEX1() {
		return QNA_INDEX1;
	}
	public void setQNA_INDEX(int qNA_INDEX1) {
		QNA_INDEX1 = qNA_INDEX1;
	}
	//2019-12-24 16:08:35
	public int getNum() {
		return num;
		
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}
