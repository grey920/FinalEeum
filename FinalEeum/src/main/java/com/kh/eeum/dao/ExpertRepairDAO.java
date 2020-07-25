package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Portfolio;

@Repository
public class ExpertRepairDAO {
	
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int expert_RepairCount() {
		// 전문가 총 리스수 가져옴
		return sqlSession.selectOne("Repairs.repaircount");
	}

	public List<Expert> getexpertList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Repairs.repairlist", map);
	}


}
