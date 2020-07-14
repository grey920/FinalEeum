package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Like;

@Repository
public class LikeDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	public int inertLike(Like like) {
		return sqlSession.insert("Likes.inertlike", like);
	}

	public List<Like> listLike(String expert_id, String user_id, int num) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("expert_id", expert_id);
		map.put("user_id",user_id);
		return sqlSession.selectOne("Likes.listLike",map);
	}

}
