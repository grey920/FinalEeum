package com.kh.eeum.service;
 
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.AdminDAO;
import com.kh.eeum.domain.Admin;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Report;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO asdao;
	
	@Override
	public int cUsers() {
		return asdao.cUsers();
	}

	@Override
	public Portfolio getList(String id) {
		return asdao.deExperts(id);
	}

	@Override
	public int allReviews() {
		return asdao.allReviews();
	}

	@Override
	public int cPosts() {
		return asdao.cPosts();
	}

	@Override
	public int newUsers() {
		return asdao.newUsers();
	}

	@Override
	public List<Report> repUsers() {
		return asdao.getQnaList();
	}

	@Override
	public int sucRep(String id) {
		int result=asdao.sucRep(id);
		if(result == 0) {
			return 0;
		}
		return 1;
	}

	@Override
	public int reject(String id) {
		return asdao.rejectRep(id);
	}

	@Override
	public int insertPrice(Admin admin) {
		return asdao.insertPrice(admin);
	}

	@Override
	public List<Admin> selPric(String id) {
		Map<String, Object> map =  new HashMap<String, Object>();
		map.put("EXID", id);
		return asdao.selPric(map);
	}

	
	

}
