package com.kh.eeum.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Admin {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int cUsers() {
		return sqlSession.selectOne("eeum.allUsers");
	}
	 
	
}
