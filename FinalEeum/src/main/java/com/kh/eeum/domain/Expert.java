package com.kh.eeum.domain;

public class Expert {
	private String expert_jumin1;
	private String expert_jumin2;
	private String expert_name;
	private String expert_id;
	private String expert_pass;
	private String expert_phone1;
	private String expert_phone2;
	private String expert_phone3;
	private String expert_email1;
	private String expert_email2;
	private String joindate;

	
	
	
	
	//다른 테이블에 있는 컬럼이지만 조인해서 가져오기 때문에 domain에도 getter/setter 작성해야뎀 - yeonji
	private String PF_CATE;
	private String PF_One;
	private String PF_SAVEPROFILE;

	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	
	public String getPF_SAVEPROFILE() {
		return PF_SAVEPROFILE;
	}

	public void setPF_SAVEPROFILE(String pF_SAVEPROFILE) {
		PF_SAVEPROFILE = pF_SAVEPROFILE;
	}

	public String getPF_One() {
		return PF_One;
	}

	public void setPF_One(String pF_One) {
		PF_One = pF_One;
	}

	public String getPF_CATE() {
		return PF_CATE;
	}

	public void setPF_CATE(String pF_CATE) {
		PF_CATE = pF_CATE;

	}

	public String getExpert_jumin1() {
		return expert_jumin1;
	}
	
	public void setExpert_jumin1(String expert_jumin1) {
		this.expert_jumin1 = expert_jumin1;
	}
	
	public String getExpert_jumin2() {
		return expert_jumin2;
	}
	
	public void setExpert_jumin2(String expert_jumin2) {
		this.expert_jumin2 = expert_jumin2;
	}
	
	public String getExpert_name() {
		return expert_name;
	}
	
	public void setExpert_name(String expert_name) {
		this.expert_name = expert_name;
	}
	
	public String getExpert_id() {
		return expert_id;
	}
	
	public void setExpert_id(String expert_id) {
		this.expert_id = expert_id;
	}
	
	public String getExpert_pass() {
		return expert_pass;
	}
	
	public void setExpert_pass(String expert_pass) {
		this.expert_pass = expert_pass;
	}
	
	public String getExpert_phone1() {
		return expert_phone1;
	}
	
	public void setExpert_phone1(String expert_phone1) {
		this.expert_phone1 = expert_phone1;
	}
	
	public String getExpert_phone2() {
		return expert_phone2;
	}
	
	public void setExpert_phone2(String expert_phone2) {
		this.expert_phone2 = expert_phone2;
	}
	
	public String getExpert_phone3() {
		return expert_phone3;
	}
	
	public void setExpert_phone3(String expert_phone3) {
		this.expert_phone3 = expert_phone3;
	}
	
	public String getExpert_email1() {
		return expert_email1;
	}
	
	public void setExpert_email1(String expert_email1) {
		this.expert_email1 = expert_email1;
	}
	
	public String getExpert_email2() {
		return expert_email2;
	}
	
	public void setExpert_email2(String expert_email2) {
		this.expert_email2 = expert_email2;
	}

}