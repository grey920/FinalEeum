package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;
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
	
	public int applyCount(String user_id) {
		return sqlSession.selectOne("Applys.applyCount", user_id);
	}

	public List<Apply> applyList(HashMap<String, Object> map) {
		return sqlSession.selectList("Applys.applyList", map);
	}
	
	public int cancel(Map<String, Object> map) {
		return sqlSession.update("Applys.cancel",map);
	}
	
	public void delete(String user_id) {
		sqlSession.delete("Applys.deleteAll", user_id);
	}

	public int updateState(Map<String, Object> map) {
		return sqlSession.update("Applys.updateState", map);
	}
	
}
