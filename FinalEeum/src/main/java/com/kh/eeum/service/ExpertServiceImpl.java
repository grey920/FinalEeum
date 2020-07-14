package com.kh.eeum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.ExpertDAO;
import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.User;

@Service
public class ExpertServiceImpl implements ExpertService{

	@Autowired
	private ExpertDAO exdao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public int insert(Expert ex) {
		return exdao.insert(ex);
	}

	@Override
	public int isId(String expert_id, String expert_pass) {
		Expert ex = exdao.isId(expert_id);
		
		int result = -1;
		
		if(ex != null) {
			if(passwordEncoder.matches(expert_pass, ex.getExpert_pass())) {
				result = 1;
			} else {
				result = 0;
			}
		}
		return result;
	}

	@Override
	public int isId(String expert_id) {
		Expert ex = exdao.isId(expert_id);
		
		int result = -1;
		
		if(ex != null) {
			result = 0;
		}
		
		return result;
	}

	@Override
	public Expert expert_info(String expert_id) {
		return exdao.expert_info(expert_id);
	}

	@Override
	public int expert_update(Expert ex) {
		return exdao.update(ex);
	}

	@Override
	public List<Expert> getList() {
		return exdao.getList();
	}
	

	
	
}
