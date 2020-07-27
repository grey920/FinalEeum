package com.kh.eeum.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Pay;

@Repository
public class PayDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Pay isId(Map<String, Object> map) {
		return sqlSession.selectOne("Pays.idcheck", map);
	}
}
