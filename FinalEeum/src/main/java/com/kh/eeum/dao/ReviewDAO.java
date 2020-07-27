package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Review;

@Repository
public class ReviewDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<Review> selectReviewList(Map<String, Object> map) {
		System.out.println("리뷰dao"+map.get("expert_id"));
		return sqlSession.selectList("Reviews.selectReviewList", map);
	}

	public int insertReview(Review review) {
		return sqlSession.insert("Reviews.insert",review);
	}

	public int update(Review review) {
		return sqlSession.update("Reviews.update",review);
	}

	public int getReviewCount(String expert_id) {
		return sqlSession.selectOne("Reviews.count",expert_id);
	}

	public int reviewDelete(int num) {
		return sqlSession.delete("Reviews.delete",num);
	}


	public float selectReviewList1(String expertid) {
		
		return sqlSession.selectOne("Reviews.selectRating", expertid);
	}

	public int reviewCount(String user_id) {
		return sqlSession.selectOne("Reviews.reviewCount", user_id);
	}

	public List<Map<String, Object>> reviewList(HashMap<String, Object> map) {
		return sqlSession.selectList("Reviews.reviewList", map);
	}

	public int selectReservationList(Map<String, Object> map) {
		return sqlSession.selectOne("Reviews.reservation",map);
	}

	public int updateReservation(Map<String, Object> map) {
		return sqlSession.update("Reviews.reservationupdate",map);
	}

	public int memberRegisterDept(HashMap<String, String> paraMap) {
		return sqlSession.insert("Reviews.registerDept", paraMap);
	}
}
