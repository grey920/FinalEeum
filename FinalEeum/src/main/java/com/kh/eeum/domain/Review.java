package com.kh.eeum.domain;

import java.util.Date;


public class Review {
	
	private int rv_no;
	private String rv_user_id;
	private String rv_expert_id;
	private String rv_content;
	private String rv_date; 
	public String getRv_date() {
		return rv_date;
	}
	public void setRv_date(String rv_date) {
		this.rv_date = rv_date;
	}
	private float rv_rating1;
	private float rv_rating2;
	private float rv_rating3;
	private float rv_rating4;
	private float rv_rating5;
	private float rv_rating6;
	private float rv_sum;
	public float getRv_sum() {
		return rv_sum;
	}
	public void setRv_sum(float rv_sum) {
		this.rv_sum = rv_sum;
	}
	public int getRv_no() {
		return rv_no;
	}
	public void setRv_no(int rv_no) {
		this.rv_no = rv_no;
	}
	public String getRv_user_id() {
		return rv_user_id;
	}
	public void setRv_user_id(String rv_user_id) {
		this.rv_user_id = rv_user_id;
	}
	public String getRv_expert_id() {
		return rv_expert_id;
	}
	public void setRv_expert_id(String rv_expert_id) {
		this.rv_expert_id = rv_expert_id;
	}
	public String getRv_content() {
		return rv_content;
	}
	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}


	public float getRv_rating1() {
		return rv_rating1;
	}
	public void setRv_rating1(float rv_rating1) {
		this.rv_rating1 = rv_rating1;
	}
	public float getRv_rating2() {
		return rv_rating2;
	}
	public void setRv_rating2(float rv_rating2) {
		this.rv_rating2 = rv_rating2;
	}
	public float getRv_rating3() {
		return rv_rating3;
	}
	public void setRv_rating3(float rv_rating3) {
		this.rv_rating3 = rv_rating3;
	}
	public float getRv_rating4() {
		return rv_rating4;
	}
	public void setRv_rating4(float rv_rating4) {
		this.rv_rating4 = rv_rating4;
	}
	public float getRv_rating5() {
		return rv_rating5;
	}
	public void setRv_rating5(float rv_rating5) {
		this.rv_rating5 = rv_rating5;
	}
	public float getRv_rating6() {
		return rv_rating6;
	}
	public void setRv_rating6(float rv_rating6) {
		this.rv_rating6 = rv_rating6;
	}

}
