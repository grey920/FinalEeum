package com.kh.eeum.domain;

public class Pay {

//	P_INDEX NUMBER PRIMARY KEY,		-- PAY테이블 고유번호
//	P_CATE VARCHAR2(100),			-- 카테고리 (원데이 / 서비스)
//	P_UID VARCHAR2(40) NOT NULL,	-- 고객아이디
//	P_RS_NO NUMBER NOT NULL,		-- 서비스 예약 번호
//	P_PAYDATE DATE,				-- 결제일
//	P_PRICE	NUMBER,	
	
	private int P_INDEX;
	private String P_CATE;
	private String P_UID;
	private String P_EXID;
	private int P_RS_NO;
	private String P_PAYDATE;
	private int P_PRICE;
	
	
	public int getP_INDEX() {
		return P_INDEX;
	}
	public void setP_INDEX(int p_INDEX) {
		P_INDEX = p_INDEX;
	}
	public String getP_CATE() {
		return P_CATE;
	}
	public void setP_CATE(String p_CATE) {
		P_CATE = p_CATE;
	}
	public String getP_UID() {
		return P_UID;
	}
	public void setP_UID(String p_UID) {
		P_UID = p_UID;
	}
	public int getP_RS_NO() {
		return P_RS_NO;
	}
	public void setP_RS_NO(int p_RS_NO) {
		P_RS_NO = p_RS_NO;
	}
	public String getP_PAYDATE() {
		return P_PAYDATE;
	}
	public void setP_PAYDATE(String p_PAYDATE) {
		P_PAYDATE = p_PAYDATE;
	}
	public int getP_PRICE() {
		return P_PRICE;
	}
	public void setP_PRICE(int p_PRICE) {
		P_PRICE = p_PRICE;
	}
	public String getP_EXID() {
		return P_EXID;
	}
	public void setP_EXID(String p_EXID) {
		P_EXID = p_EXID;
	}
	
	
}
