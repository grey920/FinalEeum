package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;

import com.kh.eeum.domain.User;

public interface UserService {
	public int insert(User u);
	public int isJumin(String user_jumin1, String user_jumin2);
	public int isId(String user_id, String user_password);
	public int isId(String user_id);
	public int isNick(String user_nick);
	public User user_info(String user_id);
	public int user_update(User u);
	public void user_delete(String user_id);
	public List<User> getList();
	public String getNick(String user_id);
	public String getProfile(String user_id);
	public String findId(String user_name, String user_jumin1, String user_jumin2);
	public int findPwd(String user_id, String user_name, String user_jumin1, String user_jumin2);
	public int updatePwd(String user_id, String user_name, String user_jumin1, String user_pass);
}
