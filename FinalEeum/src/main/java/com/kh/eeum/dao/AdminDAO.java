package com.kh.eeum.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Portfolio;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int cUsers() {
		return sqlSession.selectOne("eeum.allUsers");
	}
	
	public Portfolio deExperts(String id) {
		return sqlSession.selectOne("eeum.deExperts", id);
	}
	
	public int allReviews() {
		return sqlSession.selectOne("eeum.allReviews");
	}
}
