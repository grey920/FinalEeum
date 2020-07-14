package com.kh.eeum.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Apply;
@Repository
public class ApplyDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertApply(Apply apply) {
		return sqlSession.insert("Applys.insert", apply);
	}

	public Apply isId(Map<String, Object> map) {
		return sqlSession.selectOne("Applys.idcheck", map);
	}

	public int getClassCount(int num) {
		return sqlSession.selectOne("Applys.count", num);
	}

}
