package com.kh.eeum.service;
  
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.Admin;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private Admin asdao;
	
	@Override
	public int cUsers() {
		return asdao.cUsers();
	}

}
