package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Reportex;
import com.kh.eeum.domain.Repu;
import com.kh.eeum.domain.User;

public interface AdminService {
	public int cUsers();
	public Portfolio getList(String id);
	public int allReviews();
	public int cPosts();
	public int newUsers();
	public List<Reportex> reportEx();
	public List<Repu> reportUs();
	//public int crepex();
	//public int crepu();
}
