package com.kh.eeum.domain;

public class Like {
	private int likeno;
	private String expert_id;
	private String user_id;
	private int like_state;

	

	
	public int getLike_state() {
		return like_state;
	}

	public void setLike_state(int like_state) {
		this.like_state = like_state;
	}

	public int getLikeno() {
		return likeno;
	}

	public void setLikeno(int likeno) {
		this.likeno = likeno;
	}

	public String getExpert_id() {
		return expert_id;
	}

	public void setExpert_id(String expert_id) {
		this.expert_id = expert_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

}