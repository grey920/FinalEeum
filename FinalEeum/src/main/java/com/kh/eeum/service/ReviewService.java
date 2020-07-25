package com.kh.eeum.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kh.eeum.domain.Review;

@Service
public interface ReviewService {

	
	List<Review> selectReviewList( String expert_id, int page);
	public int insertReview(Review review);
	public int update(Review review);
	public int getReviewCount(String expert_id);
	public int reviewDelete(int num);

	float selectReviewList(String expertid);

	//사용자 후기 리스트 내역
	public int reviewCount(String user_id);
	public List<Review> reviewList(String user_id, int page, int limit);

}

