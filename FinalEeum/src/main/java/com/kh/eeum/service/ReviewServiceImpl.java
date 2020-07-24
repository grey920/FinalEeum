package com.kh.eeum.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.ExpertDAO;
import com.kh.eeum.dao.ReviewDAO;
import com.kh.eeum.dao.UserDAO;
import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Review;
import com.kh.eeum.domain.User;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	ReviewDAO dao;
	


	@Override
	public List<Review> selectReviewList( String expert_id, int page) {
		
		System.out.println("리뷰 서비스"+expert_id);
		
		int startrow = (page - 1) * 10 + 1;
		int endrow = startrow + 10 -1;
		
		Map<String, Object> map = new HashMap<String, Object>(); //
		map.put("page", page);
		map.put("expert_id", expert_id);
		map.put("startrow", startrow);
		map.put("endrow", endrow);
		return dao.selectReviewList(map);
	}

	@Override
	public int insertReview(Review review) {
		
		return dao.insertReview(review);
	}

	@Override
	public int update(Review review) {
		return dao.update(review);
	}

	@Override
	public int getReviewCount(String expert_id) {
		return dao.getReviewCount(expert_id);
	}

	@Override
	public int reviewDelete(int num) {
		return dao.reviewDelete(num);
	}

	@Override
	public float selectReviewList(String expertid) {
	
		float rating = dao.selectReviewList1(expertid);
		if(rating == 0) {
			return 0;
		}
		return rating;
	}





	

	
	
}
