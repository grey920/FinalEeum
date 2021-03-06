package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<Map<String, Object>> reviewList(String user_id, int page, int limit);

	//예약 확인
	public int selectReservation(String id,String expert_id);
	public int updateReservation(String rv_expert_id, String rv_user_id);
	
	public int memberRegisterDept(HashMap<String, String> paraMap);
	
	//후기 상세보기
	Map<String, Object> getReview(int rv_no);
}

