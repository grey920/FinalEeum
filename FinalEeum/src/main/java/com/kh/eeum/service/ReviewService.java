package com.kh.eeum.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Review;

@Service
public interface ReviewService {

	List<Review> selectReviewList( String expert_id, int page);
	public int insertReview(Review review);
	public int update(Review review);
	public int getReviewCount(String expert_id);
	public int reviewDelete(int num);

}
