package com.kh.eeum.domain;

public class Message {
	private int msg_no;
	private String msg_sid;
	private String msg_rid;
	private String msg_content;
	private String msg_time;
	private String msg_state;
		
	public int getMsg_no() {
		return msg_no;
	}
	
	public void setMsg_no(int msg_no) {
		this.msg_no = msg_no;
	}
	
	public String getMsg_sid() {
		return msg_sid;
	}
	
	public void setMsg_sid(String msg_sid) {
		this.msg_sid = msg_sid;
	}
	
	public String getMsg_rid() {
		return msg_rid;
	}
	
	public void setMsg_rid(String msg_rid) {
		this.msg_rid = msg_rid;
	}
	
	public String getMsg_content() {
		return msg_content;
	}
	
	public void setMsg_content(String msg_content) {
		this.msg_content = msg_content;
	}
	
	public String getMsg_time() {
		return msg_time;
	}
	
	public void setMsg_time(String msg_time) {
		this.msg_time = msg_time;
	}
	
	public String getMsg_state() {
		return msg_state;
	}
	
	public void setMsg_state(String msg_state) {
		this.msg_state = msg_state;
	}
	
}
