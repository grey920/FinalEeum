package com.kh.eeum.service;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.AdminDAO;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Reportex;
import com.kh.eeum.domain.Repu;
import com.kh.eeum.domain.Review_Board;
import com.kh.eeum.domain.User;

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
	public List<Reportex> reportEx() {
		return asdao.reportEx();
	}

	@Override
	public List<Repu> reportUs() {
		return asdao.reportUs();
	}

	/*@Override
	public int crepex() {
		return asdao.crepex();
	}

	@Override
	public int crepu() {
		return asdao.crepu();
	}*/




}
