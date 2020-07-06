package com.kh.eeum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.UserDAO;
import com.kh.eeum.domain.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO udao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public int insert(User u) {
		return udao.insert(u);
	}
	
	@Override
	public int isId(String user_id, String user_password) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int isId(String user_id) {
		User user = udao.isId(user_id);
		int result = -1;
		if(user != null) {
			result = 0;
		}
		return result;
	}

	@Override
	public int isNick(String user_nick) {
		User user = udao.isNick(user_nick);
		int result = -1;
		if(user != null) {
			result = 0;
		}
		return result;
	}

}
