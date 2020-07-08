package com.kh.eeum.service;

import com.kh.eeum.domain.User;

public interface UserService {
	public int insert(User u);
	public int isId(String user_id, String user_password);
	public int isId(String user_id);
	public int isNick(String user_nick);
	public User user_info(String user_id);
	public int user_update(User u);
}
