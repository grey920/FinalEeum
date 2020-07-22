package com.kh.eeum.domain;
//이 클래스는 육각형 통계에 들어가야 하는 컬럼을 제외한 후기 테이블 컬럼들입니다.
public class Review_Board {
	private int rv_index;
	private String rv_uid;
	private String rv_exid;
	private String rv_title;
	private String rv_con;
	private float rv_star;
	
	public int getRv_index() {
		return rv_index;
	}
	public void setRv_index(int rv_index) {
		this.rv_index = rv_index;
	}
	public String getRv_uid() {
		return rv_uid;
	}
	public void setRv_uid(String rv_uid) {
		this.rv_uid = rv_uid;
	}
	public String getRv_exid() {
		return rv_exid;
	}
	public void setRv_exid(String rv_exid) {
		this.rv_exid = rv_exid;
	}
	public String getRv_title() {
		return rv_title;
	}
	public void setRv_title(String rv_title) {
		this.rv_title = rv_title;
	}
	public String getRv_con() {
		return rv_con;
	}
	public void setRv_con(String rv_con) {
		this.rv_con = rv_con;
	}
	public float getRv_star() {
		return rv_star;
	}
	public void setRv_star(float rv_star) {
		this.rv_star = rv_star;
	}
	
	
}
