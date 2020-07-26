package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Report;

public interface AdminService {
	public int cUsers();
	public Portfolio getList(String id);
	public int allReviews();
	public int cPosts();
	public int newUsers();
	public List<Report> repUsers();
}
