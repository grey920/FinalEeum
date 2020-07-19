package com.kh.eeum.dao;

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

	public int getListCount(int board_num) {
		return sqlSession.selectOne("Comments.count",board_num);
	}

	public int insertReview(Review review) {
		return sqlSession.insert("Reviews.insert",review);
	}

	public int update(Review review) {
		return sqlSession.update("Reviews.update",review);
	}
}
