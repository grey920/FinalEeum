package com.kh.eeum;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class DAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insert(DTO dto) {
		return sqlSession.insert("Test.insert1", dto);
	}
	
	public List<DTO> select() {
		return sqlSession.selectList("Test.select1");
	}
}
