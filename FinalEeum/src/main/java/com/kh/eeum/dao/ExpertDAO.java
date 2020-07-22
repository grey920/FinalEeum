package com.kh.eeum.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Review;

@Repository
public class ExpertDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insert(Expert ex) {
		return sqlSession.insert("Experts.insert", ex);
	}

	public Expert isId(String expert_id) {
		return sqlSession.selectOne("Experts.idcheck", expert_id);
	}

	public Expert isNick(String expert_nick) {
		return sqlSession.selectOne("Experts.nickcheck", expert_nick);
	}

	public Expert expert_info(String expert_id) {
		return sqlSession.selectOne("Experts.idcheck", expert_id);
	}

	public int update(Expert ex) {
		return sqlSession.update("Experts.expertupdate", ex);
	}


	public int expert_listCount() {
		// 전문가 총 리스수 가져옴
		return sqlSession.selectOne("Experts.expertcount");
	}

	public List<Expert> getexpertList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Experts.expertlist", map);
	}


	public Expert getexpertListOne(String expertid) {
		System.out.println("dao 넘어온 값: "+expertid);
		return sqlSession.selectOne("Experts.expertdetails", expertid);

	}

	public List<Expert> getList(){
		return sqlSession.selectList("Experts.expertList");

	}
	
	public Integer insertRequest(Map<String, Object> paramMap) {
		return sqlSession.insert("Experts.insertRequest", paramMap);		
	}

	public int insertRequestFileData(Map<String, Object> paramMap) {
		return sqlSession.insert("Experts.insertRequestFileData", paramMap);
	}

	public Portfolio poselectone(String expertid) {
		return sqlSession.selectOne("Experts.poselect",expertid);
	}

	public int getRquestCount(String expertid) {
		return sqlSession.selectOne("Experts.RequestCount", expertid);
	}

	public List<Portfolio> getPoList(Map<String, Object> map) {
		return sqlSession.selectList("Experts.PoList",map);
	}

	public List<Portfolio> getPoMulList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Experts.PoMulList",map);
	}


	public List<Review> ReviewRatingList(HashMap<String, Object> map) {
		return sqlSession.selectList("Experts.ReviewRating",map);
	}

	public int expert_listCountRepair() {
		// TODO Auto-generated method stub
		return 0;
	}



}
