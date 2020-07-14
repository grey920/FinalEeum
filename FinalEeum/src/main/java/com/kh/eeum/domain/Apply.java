//도메인 -> 예전 DTO 클래스
package com.kh.eeum.domain;


public class Apply {
	private int AP_INDEX;
	private String AP_ID;
	private String AP_RDATE; 
	private int AP_CINDEX; 
	private String AP_TITLE;
	private String AP_LOCATE;
	private String AP_CDATE;
	private int AP_PROG;
	public int getAP_INDEX() {
		return AP_INDEX;
	}
	public void setAP_INDEX(int aP_INDEX) {
		AP_INDEX = aP_INDEX;
	}
	public String getAP_ID() {
		return AP_ID;
	}
	public void setAP_ID(String aP_ID) {
		AP_ID = aP_ID;
	}
	public String getAP_RDATE() {
		return AP_RDATE;
	}
	public void setAP_RDATE(String aP_RDATE) {
		AP_RDATE = aP_RDATE.substring(0,10);
	}
	public int getAP_CINDEX() {
		return AP_CINDEX;
	}
	public void setAP_CINDEX(int aP_CINDEX) {
		AP_CINDEX = aP_CINDEX;
	}
	public String getAP_TITLE() {
		return AP_TITLE;
	}
	public void setAP_TITLE(String aP_TITLE) {
		AP_TITLE = aP_TITLE;
	}
	public String getAP_LOCATE() {
		return AP_LOCATE;
	}
	public void setAP_LOCATE(String aP_LOCATE) {
		AP_LOCATE = aP_LOCATE;
	}
	public String getAP_CDATE() {
		return AP_CDATE;
	}
	public void setAP_CDATE(String aP_CDATE) {
		AP_CDATE = aP_CDATE;
	}
	public int getAP_PROG() {
		return AP_PROG;
	}
	public void setAP_PROG(int aP_PROG) {
		AP_PROG = aP_PROG;
	}
	
}
