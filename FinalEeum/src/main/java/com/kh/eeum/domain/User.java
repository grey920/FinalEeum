package com.kh.eeum.domain;

import org.springframework.web.multipart.MultipartFile;

public class User {
	private String user_profile;
	private String user_jumin1;
	private String user_jumin2;
	private String user_name;
	private String user_nick;
	private String user_id;
	private String user_pass;
	private String user_addr1;
	private String user_addr2;
	private String user_phone1;
	private String user_phone2;
	private String user_phone3;
	private String user_email1;
	private String user_email2;
	private MultipartFile uploadfile;
	
	
	public String getUser_profile() {
		return user_profile;
	}
	
	public void setUser_profile(String user_profile) {
		this.user_profile = user_profile;
	}
	
	public String getUser_jumin1() {
		return user_jumin1;
	}
	
	public void setUser_jumin1(String user_jumin1) {
		this.user_jumin1 = user_jumin1;
	}
	
	public String getUser_jumin2() {
		return user_jumin2;
	}
	
	public void setUser_jumin2(String user_jumin2) {
		this.user_jumin2 = user_jumin2;
	}
	
	public String getUser_name() {
		return user_name;
	}
	
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public String getUser_nick() {
		return user_nick;
	}
	
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	
	public String getUser_id() {
		return user_id;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getUser_pass() {
		return user_pass;
	}
	
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	
	public String getUser_addr1() {
		return user_addr1;
	}
	
	public void setUser_addr1(String user_addr1) {
		this.user_addr1 = user_addr1;
	}
	
	public String getUser_addr2() {
		return user_addr2;
	}
	
	public void setUser_addr2(String user_addr2) {
		this.user_addr2 = user_addr2;
	}
	
	public String getUser_phone1() {
		return user_phone1;
	}
	
	public void setUser_phone1(String user_phone1) {
		this.user_phone1 = user_phone1;
	}
	
	public String getUser_phone2() {
		return user_phone2;
	}
	
	public void setUser_phone2(String user_phone2) {
		this.user_phone2 = user_phone2;
	}
	
	public String getUser_phone3() {
		return user_phone3;
	}
	
	public void setUser_phone3(String user_phone3) {
		this.user_phone3 = user_phone3;
	}
	
	public String getUser_email1() {
		return user_email1;
	}
	
	public void setUser_email1(String user_email1) {
		this.user_email1 = user_email1;
	}
	
	public String getUser_email2() {
		return user_email2;
	}
	
	public void setUser_email2(String user_email2) {
		this.user_email2 = user_email2;
	}

	public MultipartFile getUploadfile() {
		return uploadfile;
	}

	public void setUploadfile(MultipartFile uploadfile) {
		this.uploadfile = uploadfile;
	}
	
	
}
