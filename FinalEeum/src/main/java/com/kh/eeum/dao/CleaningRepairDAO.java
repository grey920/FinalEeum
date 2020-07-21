package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Expert;

@Repository
public class CleaningRepairDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Expert> getexpertList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Cleanings.cleaninglist", map);
	}

	public int expert_CleaningCount() {
		return sqlSession.selectOne("Cleanings.cleaningcount");
	}

}
