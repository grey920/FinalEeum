package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.ReviewDAO;
import com.kh.eeum.domain.Review;

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

	public int reviewCount(String user_id) {
		return dao.reviewCount(user_id);
	}

	@Override
	public List<Map<String, Object>> reviewList (String user_id, int page, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int startrow = (page -1) * limit + 1;
		int endrow = startrow + limit -1;
		
		map.put("rv_user_id", user_id);
		map.put("start", startrow);
		map.put("end", endrow);
		
		return dao.reviewList(map);

	}

	@Override
	public Map<String, Object> getReview(int rv_no) {
		return dao.getReview(rv_no);
	}





	

	
	
}
