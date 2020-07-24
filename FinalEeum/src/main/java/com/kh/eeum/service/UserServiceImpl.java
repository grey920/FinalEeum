package com.kh.eeum.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.ExpertDAO;
import com.kh.eeum.dao.UserDAO;
import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO udao;
	
	@Autowired
	private ExpertDAO exdao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public int insert(User u) {
		return udao.insert(u);
	}
	
	@Override
	public int isId(String user_id, String user_pass) {
		User user = udao.isId(user_id);
		
		int result = -1;
		
		if(user != null) {
			if(passwordEncoder.matches(user_pass, user.getUser_pass())) {
				result = 1;
			} else {
				result = 0;
			}
		}
		return result;
	}

	@Override
	public int isId(String user_id) {
		User user = udao.isId(user_id);
		Expert expert = exdao.isId(user_id);
		
		int result = -1;
		
		if(user != null || expert != null) {
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
	
	@Override
	public int isJumin(String user_jumin1, String user_jumin2) {
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		list = udao.isJumin(user_jumin1);
		
		int result = -1;
		
		for(int i = 0; i < list.size(); i++) {
			String jumin2 =  list.get(i).get("USER_JUMIN2");
			
			if(passwordEncoder.matches(user_jumin2, jumin2)) {
				result = 0;
				break;
			}
		}

		return result;
	}
	
	@Override
	public User user_info(String user_id) {
		return udao.user_info(user_id);
	}

	@Override
	public int user_update(User u) {
		return udao.update(u);
	}

	@Override
	public void user_delete(String user_id) {
		udao.delete(user_id);
	}

	@Override
	public List<User> getList() {
		// TODO Auto-generated method stub
		return udao.getList();
	}
	
	@Override
	public String getNick(String user_id) {
		return udao.getNick(user_id);
	}

	@Override
	public String getProfile(String user_id) {
		return udao.getProfile(user_id);
	}

	@Override
	public String findId(String user_name, String user_jumin1, String user_jumin2) {
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		list = udao.findId(user_name, user_jumin1);
		
		String result_id = null;
		
		for(int i = 0; i <list.size(); i++) {
			String result_jumin = list.get(i).get("USER_JUMIN2");
			
			if(passwordEncoder.matches(user_jumin2, result_jumin)) {
				result_id = list.get(i).get("USER_ID");
				break;
			}
		}
		
		return result_id;
	}

	@Override
	public int findPwd(String user_id, String user_name, String user_jumin1, String user_jumin2) {
		Map<String, String> map = new HashMap<String, String>();
		
		map = udao.findPwd(user_id, user_name, user_jumin1);
		
		int result = 0;
		
		String result_jumin2 = map.get("USER_JUMIN2");
			
		if(passwordEncoder.matches(user_jumin2, result_jumin2)) {
			result = 1;
		}
		
		return result;
	}

	@Override
	public int updatePwd(String user_id, String user_name, String user_jumin1, String newPwd) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", user_id);
		map.put("user_name", user_name);
		map.put("user_jumin1", user_jumin1);
		map.put("user_pass", newPwd);
		
		return udao.updatePwd(map);
	}

}
