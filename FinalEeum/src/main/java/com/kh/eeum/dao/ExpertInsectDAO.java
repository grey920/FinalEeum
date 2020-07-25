package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Expert;

@Repository
public class ExpertInsectDAO {

	
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Expert> getexpertList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Insects.insectlist", map);
	}

	public int expert_RepairCount() {
		// 전문가 총 리스수 가져옴
		return sqlSession.selectOne("Insects.insectcount");
	}

}
