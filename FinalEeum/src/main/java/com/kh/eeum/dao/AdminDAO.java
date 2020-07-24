package com.kh.eeum.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Reportex;
import com.kh.eeum.domain.Repu;
import com.kh.eeum.domain.User;

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
	
	public int cPosts() {
		return sqlSession.selectOne("eeum.cPosts");
	}
	
	public int newUsers() {
		return sqlSession.selectOne("eeum.newUsers");
	}
	
	public List<Reportex> reportEx() {
		return sqlSession.selectList("eeum.reportex");
	}
	
	public List<Repu> reportUs(){
		return sqlSession.selectList("eeum.repu");
	}
	
	/*public int crepex() {
		return sqlSession.selectOne("eeum.crepex");
	}
	
	public int crepu() {
		return sqlSession.selectOne("eeum.crepu");
	}*/
	
}
