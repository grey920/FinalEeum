package com.kh.eeum.domain;

import org.springframework.web.multipart.MultipartFile;

public class Expert {
	private String expert_profile = "/profile.png";
	private String expert_saveprofile = "/profile.png";
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
	private MultipartFile uploadfile;
	
	public String getExpert_profile() {
		return expert_profile;
	}
	
	public void setExpert_profile(String expert_profile) {
		this.expert_profile = expert_profile;
	}
	
	public String getExpert_saveprofile() {
		return expert_saveprofile;
	}
	
	public void setExpert_saveprofile(String expert_saveprofile) {
		this.expert_saveprofile = expert_saveprofile;
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
	
	public MultipartFile getUploadfile() {
		return uploadfile;
	}
	
	public void setUploadfile(MultipartFile uploadfile) {
		this.uploadfile = uploadfile;
	}
	
}