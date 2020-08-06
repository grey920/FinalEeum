package com.kh.eeum.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Admin;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Report;

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
	
	public List<Report> getQnaList(){
		return sqlSession.selectList("eeum.qna");
	}
	
	public int sucRep(String id) {
		return sqlSession.update("eeum.state", id);
	}
	
	public int rejectRep(String id) {
		return sqlSession.delete("eeum.reject", id);
	}
	
	public int insertPrice(Admin admin){
		return sqlSession.insert("eeum.priceIn",admin);
	}
	
	public List<Admin> selPric(Map<String, Object> map){
		return sqlSession.selectList("eeum.selPric",map);
	}
	
}
